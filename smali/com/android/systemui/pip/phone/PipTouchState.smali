.class public Lcom/android/systemui/pip/phone/PipTouchState;
.super Ljava/lang/Object;
.source "PipTouchState.java"


# static fields
.field static final DOUBLE_TAP_TIMEOUT:J = 0xc8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActivePointerId:I

.field private mAllowDraggingOffscreen:Z

.field private mAllowTouches:Z

.field private final mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

.field private final mDownDelta:Landroid/graphics/PointF;

.field private final mDownTouch:Landroid/graphics/PointF;

.field private mDownTouchTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsDoubleTap:Z

.field private mIsDragging:Z

.field private mIsUserInteracting:Z

.field private mIsWaitingForDoubleTap:Z

.field private final mLastDelta:Landroid/graphics/PointF;

.field private mLastDownTouchTime:J

.field private final mLastTouch:Landroid/graphics/PointF;

.field private mPreviouslyDragging:Z

.field private mStartedDragging:Z

.field private mUpTouchTime:J

.field private final mVelocity:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    .line 46
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    .line 47
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 68
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 340
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 341
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 342
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public allowDraggingOffscreen()Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipTouchHandler"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllowTouches="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivePointerId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDownTouch="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDownDelta="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastTouch="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastDelta="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mVelocity="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsUserInteracting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsDragging="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStartedDragging="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mAllowDraggingOffscreen="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getDoubleTapTimeoutCallbackDelay()J
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xc8

    .line 315
    iget-wide v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDownTouchPosition()Landroid/graphics/PointF;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getLastTouchDelta()Landroid/graphics/PointF;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getLastTouchPosition()Landroid/graphics/PointF;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getVelocity()Landroid/graphics/PointF;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    return-object p0
.end method

.method public isDoubleTap()Z
    .locals 0

    .line 291
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    return p0
.end method

.method public isDragging()Z
    .locals 0

    .line 243
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    return p0
.end method

.method public isUserInteracting()Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    return p0
.end method

.method public isWaitingForDoubleTap()Z
    .locals 0

    .line 298
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    const-string v5, "PipTouchHandler"

    const/4 v6, -0x1

    if-eq v0, v4, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 153
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 157
    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    if-ne v1, v2, :cond_11

    if-nez v0, :cond_2

    move v3, v4

    .line 160
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 165
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_3

    .line 117
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 122
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovement(Landroid/view/MotionEvent;)V

    .line 123
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid active pointer id on MOVE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 129
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    move v0, v3

    .line 135
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    if-nez v2, :cond_7

    if-eqz v0, :cond_8

    .line 137
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 138
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    goto :goto_1

    .line 141
    :cond_7
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 143
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_3

    .line 171
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_a

    goto/16 :goto_3

    .line 176
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovement(Landroid/view/MotionEvent;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 178
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v8

    int-to-float v8, v8

    .line 177
    invoke-virtual {v0, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 181
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_b

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid active pointer id on UP: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 187
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    .line 188
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-virtual {v5, v6, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    iget-wide v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, v1

    if-gez p1, :cond_c

    move v3, v4

    :cond_c
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 196
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->recycleVelocityTracker()V

    goto :goto_3

    .line 89
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    if-nez v0, :cond_f

    return-void

    .line 94
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->initOrResetVelocityTracker()V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->addMovement(Landroid/view/MotionEvent;)V

    .line 97
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 103
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    .line 106
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mPreviouslyDragging:Z

    if-nez p1, :cond_10

    iget-wide v5, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    iget-wide v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, v1

    if-gez p1, :cond_10

    goto :goto_2

    :cond_10
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDoubleTap:Z

    .line 108
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    .line 109
    iget-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouchTime:J

    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDownTouchTime:J

    .line 110
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_11

    .line 111
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    :goto_3
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    return-void
.end method

.method public scheduleDoubleTapTimeoutCallback()V
    .locals 4

    .line 306
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->getDoubleTapTimeoutCallbackDelay()J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setAllowTouches(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 268
    iget-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    :cond_0
    return-void
.end method

.method public startedDragging()Z
    .locals 0

    .line 257
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    return p0
.end method
