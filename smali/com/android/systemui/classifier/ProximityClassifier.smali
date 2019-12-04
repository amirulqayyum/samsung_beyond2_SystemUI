.class public Lcom/android/systemui/classifier/ProximityClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private mAverageNear:F

.field private mGestureStartTimeNano:J

.field private mNear:Z

.field private mNearDuration:J

.field private mNearStartTimeNano:J


# direct methods
.method private update(ZJ)V
    .locals 4

    .line 79
    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 82
    iget-boolean v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v2, :cond_0

    .line 83
    iget-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    sub-long v0, p2, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_0
    if-eqz p1, :cond_1

    .line 88
    iput-wide p2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    .line 91
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/ProximityEvaluator;->evaluate(FI)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PROX"

    return-object p0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 44
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    .line 56
    iput-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    sub-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-nez p1, :cond_3

    .line 64
    iget-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    goto :goto_1

    .line 66
    :cond_3
    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    long-to-float p1, v0

    long-to-float v0, v3

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    :cond_4
    :goto_1
    return-void
.end method
