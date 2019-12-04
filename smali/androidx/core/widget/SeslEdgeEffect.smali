.class public Landroidx/core/widget/SeslEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SeslEdgeEffect.java"


# static fields
.field private static final ATTRS:[I

.field private static final COS:F

.field private static final SIN:F


# instance fields
.field private MAX_SCALE:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDuration:F

.field private mEdgeControlPointHeight:F

.field private mEdgePadding:F

.field private mForceCallOnRelease:Ljava/lang/Runnable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOnReleaseCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPullDistance:F

.field private mSeslHostView:Landroid/view/View;

.field private mStartTime:J

.field private mState:I

.field private final mTabHeight:F

.field private final mTabHeightBuffer:F

.field private mTargetDisplacement:F

.field private mTempDeltaDistance:F

.field private mTempDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroidx/core/widget/SeslEdgeEffect;->SIN:F

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroidx/core/widget/SeslEdgeEffect;->COS:F

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10104ce

    aput v2, v0, v1

    .line 152
    sput-object v0, Landroidx/core/widget/SeslEdgeEffect;->ATTRS:[I

    return-void
.end method

.method static synthetic access$002(Landroidx/core/widget/SeslEdgeEffect;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    return p1
.end method

.method static synthetic access$100(Landroidx/core/widget/SeslEdgeEffect;)F
    .locals 0

    .line 66
    iget p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    return p0
.end method

.method static synthetic access$200(Landroidx/core/widget/SeslEdgeEffect;)F
    .locals 0

    .line 66
    iget p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mTempDisplacement:F

    return p0
.end method

.method static synthetic access$300(Landroidx/core/widget/SeslEdgeEffect;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dipToPixels(F)F
    .locals 1

    .line 182
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private isEdgeEffectRunning()Z
    .locals 1

    .line 273
    iget p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private update()V
    .locals 6

    .line 536
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 537
    iget-wide v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 539
    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 541
    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlpha:F

    .line 542
    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iget v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 543
    iget v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mDisplacement:F

    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mDisplacement:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 545
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 546
    :cond_0
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x3e19999a    # 0.15f

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 591
    :pswitch_0
    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    .line 592
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x43e10000    # 450.0f

    .line 593
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    .line 595
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 596
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 598
    iput v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 599
    iput v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 582
    :pswitch_1
    iput v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    .line 583
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    .line 584
    iput v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    .line 586
    iput v4, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 587
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->MAX_SCALE:F

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 574
    :pswitch_2
    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    goto :goto_0

    .line 577
    :pswitch_3
    iput v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    goto :goto_0

    .line 549
    :pswitch_4
    iput v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    .line 550
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    .line 551
    iput v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    .line 553
    iput v4, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 554
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->MAX_SCALE:F

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    .line 559
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    .line 560
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x437a0000    # 250.0f

    .line 561
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    .line 563
    iput v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 564
    iput v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 566
    iput v4, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 567
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->MAX_SCALE:F

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 569
    iput v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 570
    iput-boolean v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12

    .line 485
    invoke-direct {p0}, Landroidx/core/widget/SeslEdgeEffect;->update()V

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 489
    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 491
    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 493
    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mDisplacement:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 498
    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    iget v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgePadding:F

    add-float v9, v2, v3

    .line 500
    iget-object v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    .line 501
    iget-object v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 502
    iget-object v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 503
    iget-object v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgePadding:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 504
    iget-object v5, p0, Landroidx/core/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    sub-float v6, v1, v2

    add-float v8, v1, v2

    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 505
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v10, v1

    iget v11, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgePadding:F

    move v7, v9

    .line 504
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 506
    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 510
    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 512
    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 514
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 517
    iget p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_0

    .line 518
    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 522
    :goto_0
    iget p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 470
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 532
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public isFinished()Z
    .locals 0

    .line 240
    iget p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAbsorb(I)V
    .locals 3

    .line 415
    invoke-direct {p0}, Landroidx/core/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x1c

    .line 422
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v1

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    const/4 v1, 0x2

    .line 430
    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    const/16 v1, 0x64

    .line 431
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x2710

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 433
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 p1, 0x437a0000    # 250.0f

    .line 434
    iput p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    const/4 p1, 0x0

    .line 438
    iput p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 439
    iput p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 441
    iget p1, p0, Landroidx/core/widget/SeslEdgeEffect;->MAX_SCALE:F

    iput p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    const p1, 0x3e19999a    # 0.15f

    .line 442
    iput p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 445
    iput p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 449
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 267
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/SeslEdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 6

    .line 330
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mPullDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 334
    invoke-direct {p0}, Landroidx/core/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mPullDistance:F

    .line 341
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 342
    iput p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mTargetDisplacement:F

    .line 343
    iget p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-wide v4, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float p2, v4

    iget v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return-void

    .line 346
    :cond_1
    iget p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 347
    iget p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    .line 351
    :cond_2
    invoke-direct {p0}, Landroidx/core/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mPullDistance:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    if-nez p2, :cond_3

    goto :goto_0

    .line 357
    :cond_3
    iget-object p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz p2, :cond_4

    const/16 p2, 0x1c

    .line 358
    invoke-static {p2}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 360
    iget-object v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 365
    :cond_4
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    .line 367
    iput-wide v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 p2, 0x43270000    # 167.0f

    .line 368
    iput p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    .line 370
    iget p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr p2, p1

    iput p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mPullDistance:F

    :cond_5
    :goto_0
    return-void
.end method

.method public onPullCallOnRelease(FFI)V
    .locals 0

    .line 307
    iput p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    .line 308
    iput p2, p0, Landroidx/core/widget/SeslEdgeEffect;->mTempDisplacement:F

    .line 309
    iget-object p1, p0, Landroidx/core/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long p2, p3

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mPullDistance:F

    const/4 v1, 0x1

    .line 384
    iput-boolean v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    .line 387
    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 391
    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mState:I

    .line 392
    iget v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    .line 393
    iget v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    .line 395
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    .line 396
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    .line 398
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x43e10000    # 450.0f

    .line 399
    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mDuration:F

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 460
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 4

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v1, v0

    .line 198
    sget v2, Landroidx/core/widget/SeslEdgeEffect;->SIN:F

    div-float/2addr v1, v2

    .line 199
    sget v2, Landroidx/core/widget/SeslEdgeEffect;->COS:F

    mul-float/2addr v2, v1

    sub-float/2addr v1, v2

    int-to-float p2, p2

    .line 219
    iget v2, p0, Landroidx/core/widget/SeslEdgeEffect;->mTabHeight:F

    iget v3, p0, Landroidx/core/widget/SeslEdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    .line 220
    invoke-direct {p0, v0}, Landroidx/core/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgePadding:F

    const/high16 v0, 0x41980000    # 19.0f

    .line 221
    invoke-direct {p0, v0}, Landroidx/core/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    .line 223
    invoke-direct {p0, v0}, Landroidx/core/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgePadding:F

    const/high16 v0, 0x41e80000    # 29.0f

    .line 224
    invoke-direct {p0, v0}, Landroidx/core/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    .line 228
    :goto_0
    iget-object p0, p0, Landroidx/core/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v0, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
