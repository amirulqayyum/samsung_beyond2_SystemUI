.class public Lcom/android/systemui/bubbles/BubbleStackView;
.super Landroid/widget/FrameLayout;
.source "BubbleStackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

.field static final FLYOUT_HIDE_AFTER:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAfterFlyoutHides:Ljava/lang/Runnable;

.field private final mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mAfterMagnet:Ljava/lang/Runnable;

.field private mAnimatingMagnet:Z

.field private mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

.field private final mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private mBubblePadding:I

.field private mBubbleSize:I

.field private mClippingParameters:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private final mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

.field private final mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

.field private mDesaturateAndDarkenTargetView:Landroid/view/View;

.field private mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDraggingInDismissTarget:Z

.field private mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private mExpandedAnimateXDistance:I

.field private mExpandedAnimateYDistance:I

.field private mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field private mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mExpandedViewContainer:Landroid/widget/FrameLayout;

.field private mExpandedViewPadding:I

.field private final mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

.field private final mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private mFlyoutDragDeltaX:F

.field private final mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mHideFlyout:Ljava/lang/Runnable;

.field private mImeOffset:I

.field private mImeVisible:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsExpanded:Z

.field private mIsExpansionAnimating:Z

.field private mIsGestureInProgress:Z

.field private mMoveStackToValidPositionOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPipDismissHeight:I

.field private mPointerHeight:I

.field private mShowingDismiss:Z

.field private mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

.field private mStackOnLeftOrWillBe:Z

.field private mStatusBarHeight:I

.field private mSuppressFlyout:Z

.field private mSuppressNewDot:Z

.field private final mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

.field private mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTempLoc:[I

.field mTempRect:Landroid/graphics/RectF;

.field private mTouchHandler:Lcom/android/systemui/bubbles/BubbleTouchHandler;

.field private mVerticalPosPercentBeforeRotation:F

.field private final mVibrator:Landroid/os/Vibrator;

.field private mViewUpdatedRequested:Z

.field private mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mWasOnLeftBeforeRotation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcom/android/systemui/bubbles/BubbleStackView$1;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/BubbleStackView$1;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;)V
    .locals 6
    .param p3    # Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 295
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    .line 162
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$jXS10HgKCVgyvjX1UcSgdO2D_ug;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$jXS10HgKCVgyvjX1UcSgdO2D_ug;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 172
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    .line 189
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 192
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 198
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 218
    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    .line 219
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/RectF;

    .line 221
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 223
    new-instance v2, Lcom/android/systemui/bubbles/BubbleStackView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/BubbleStackView$2;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 234
    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$c-OiserdP7VIvU56hCAARnBncEE;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$c-OiserdP7VIvU56hCAARnBncEE;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 237
    new-instance v2, Lcom/android/systemui/bubbles/BubbleStackView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/BubbleStackView$3;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mClippingParameters:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 252
    new-instance v2, Lcom/android/systemui/bubbles/BubbleStackView$4;

    const-string v3, "FlyoutCollapseSpring"

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/bubbles/BubbleStackView$4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 266
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutCollapseProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v2, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    .line 270
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 276
    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$qNTN7f0ovKQkRVyENDOFd8Z5ydA;

    invoke-direct {v2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$qNTN7f0ovKQkRVyENDOFd8Z5ydA;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 290
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressNewDot:Z

    .line 291
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressFlyout:Z

    .line 297
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 298
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 299
    new-instance v2, Lcom/android/systemui/bubbles/BubbleTouchHandler;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleTouchHandler;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/BubbleData;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTouchHandler:Lcom/android/systemui/bubbles/BubbleTouchHandler;

    .line 300
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTouchHandler:Lcom/android/systemui/bubbles/BubbleTouchHandler;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 304
    sget v2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    .line 305
    sget v2, Lcom/android/systemui/R$dimen;->bubble_padding:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePadding:I

    .line 306
    sget v2, Lcom/android/systemui/R$dimen;->bubble_expanded_animate_x_distance:I

    .line 307
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateXDistance:I

    .line 308
    sget v2, Lcom/android/systemui/R$dimen;->bubble_expanded_animate_y_distance:I

    .line 309
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateYDistance:I

    .line 310
    sget v2, Lcom/android/systemui/R$dimen;->bubble_pointer_height:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerHeight:I

    const v2, 0x1050403

    .line 313
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    .line 314
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->pip_dismiss_gradient_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPipDismissHeight:I

    .line 316
    sget v2, Lcom/android/systemui/R$dimen;->pip_ime_offset:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mImeOffset:I

    .line 318
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    const-string/jumbo v2, "window"

    .line 319
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 320
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const-string/jumbo v2, "vibrator"

    .line 322
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVibrator:Landroid/os/Vibrator;

    .line 324
    sget v2, Lcom/android/systemui/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    .line 325
    sget v2, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 327
    new-instance v2, Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-direct {v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 328
    new-instance v2, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;-><init>(Landroid/graphics/Point;I)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    sget-object p3, Lcom/android/systemui/bubbles/BubbleStackView;->DEFAULT_SURFACE_SYNCHRONIZER:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    :goto_0
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    .line 332
    new-instance p3, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p3, p1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    .line 333
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p3, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 334
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 335
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 336
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    .line 339
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 340
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 342
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 343
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    new-instance p2, Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-direct {p2, p1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    .line 346
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x64

    .line 348
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 349
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 350
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const p3, 0x44bb8000    # 1500.0f

    .line 353
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 p3, 0x3f400000    # 0.75f

    .line 354
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 352
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 355
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 357
    new-instance p1, Lcom/android/systemui/bubbles/BubbleDismissView;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/bubbles/BubbleDismissView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    .line 358
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 360
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$dimen;->pip_dismiss_gradient_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v4, 0x50

    invoke-direct {p2, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 358
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 364
    new-instance p1, Lcom/android/systemui/bubbles/BubbleDismissView;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/bubbles/BubbleDismissView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    .line 365
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/systemui/R$dimen;->pip_dismiss_gradient_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p2, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 365
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 371
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, p2, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 373
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43480000    # 200.0f

    .line 375
    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 376
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 373
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 378
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, p2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 380
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 382
    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 383
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    .line 380
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 384
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pASZEuVtfFyo-FF2s4CpK8srlzg;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$pASZEuVtfFyo-FF2s4CpK8srlzg;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 390
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 p1, 0x1

    .line 391
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 392
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 394
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$JEhiIzPncR72OLevX_9noDIsyDo;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$JEhiIzPncR72OLevX_9noDIsyDo;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 416
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Aj3gHezTKlWCOgQ9WHdTc3f-68g;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Aj3gHezTKlWCOgQ9WHdTc3f-68g;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMoveStackToValidPositionOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 426
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 428
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 429
    new-instance p2, Landroid/graphics/ColorMatrix;

    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    new-array p3, v1, [F

    .line 431
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    .line 432
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$tnt8Bxa6ByT59tOoV-lsMSNUULw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleStackView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->applyCurrentState()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/bubbles/BubbleStackView;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/BubbleStackView;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleStackView;)F
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/BubbleStackView;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    return p0
.end method

.method private animateDesaturateAndDarken(Landroid/view/View;Z)V
    .locals 1

    .line 1118
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 1122
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1124
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1125
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1127
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1128
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/bubbles/BubbleStackView$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/BubbleStackView$5;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1136
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method

.method private animateExpansion(Z)V
    .locals 5

    .line 893
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eq v0, p1, :cond_6

    .line 894
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 896
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 897
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 898
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->applyCurrentState()V

    const/4 v0, 0x1

    .line 900
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 902
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$5c3-dXYvEqr4qSSbPrW_SOEdPjE;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$5c3-dXYvEqr4qSSbPrW_SOEdPjE;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    if-eqz p1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 910
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$bBpXql1jQreadH9xO4XoCcx6O7I;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$bBpXql1jQreadH9xO4XoCcx6O7I;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->expandFromStack(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 915
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->cancelAllAnimations()V

    .line 916
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 917
    invoke-virtual {v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPositionAlongNearestHorizontalEdge()Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$amDiwHiDmLFSSxsce9OtjezhNY4;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$amDiwHiDmLFSSxsce9OtjezhNY4;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    .line 916
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->collapseBackToStack(Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    .line 925
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 926
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateXDistance:I

    neg-int v0, v0

    goto :goto_1

    .line 927
    :cond_1
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateXDistance:I

    :goto_1
    int-to-float v0, v0

    .line 929
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 930
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimateYDistance:I

    int-to-float v2, v2

    .line 929
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 932
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getYPositionForExpandedView()F

    move-result v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 935
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 936
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 937
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 940
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v4, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 942
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 943
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 944
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    return-void
.end method

.method private animateFlyoutCollapsed(ZF)V
    .locals 3

    .line 1281
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    .line 1282
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutTransitionSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 1283
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1284
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p2

    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_1

    .line 1286
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    if-eqz v0, :cond_0

    neg-int p0, p0

    :cond_0
    int-to-float p0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1285
    :goto_0
    invoke-virtual {p2, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private applyCurrentState()V
    .locals 3

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1492
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    .line 1496
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getYPositionForExpandedView()F

    move-result v0

    .line 1497
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1499
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    goto :goto_1

    .line 1504
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 1508
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 1509
    invoke-direct {p0, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleShadowsAndDotPosition(Z)V

    return-void
.end method

.method private getBottomInset()I
    .locals 1

    .line 1450
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    .line 1452
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getStatusBarHeight()I
    .locals 3

    .line 1437
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1439
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStatusBarHeight:I

    .line 1441
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1442
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 1439
    :cond_0
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private hideFlyoutImmediate()V
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1412
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1416
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->hideFlyout()V

    return-void
.end method

.method private isIntersecting(Landroid/view/View;FF)Z
    .locals 6

    .line 1458
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    .line 1459
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v1, v4

    int-to-float v5, v5

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempLoc:[I

    aget v2, v2, v4

    .line 1460
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v2

    .line 1459
    invoke-virtual {v0, v3, v5, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1461
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$c-OiserdP7VIvU56hCAARnBncEE(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateSystemGestureExcludeRects()V

    return-void
.end method

.method private logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V
    .locals 26
    .param p1    # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p1

    if-eqz v0, :cond_1

    .line 1612
    iget-object v1, v0, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x95

    .line 1629
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1630
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    .line 1631
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    .line 1632
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v6

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v7

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v9

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v10

    iget-object v8, v0, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1637
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v11

    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1638
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isForegroundService()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 1639
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    move/from16 v8, p2

    .line 1628
    invoke-static/range {v2 .. v13}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    const/16 v14, 0x95

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1619
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v19

    .line 1621
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v21

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v20, p2

    .line 1614
    invoke-static/range {v14 .. v25}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    :goto_1
    return-void
.end method

.method private notifyExpansionChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 949
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 950
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private requestUpdate()V
    .locals 2

    .line 1465
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1468
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 1469
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1470
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetDesaturationAndDarken()V
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1143
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private springInDismissTarget()V
    .locals 1

    .line 1249
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1253
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->springIn()V

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1258
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    const v0, 0x46fffc00    # 32766.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setZ(F)V

    return-void
.end method

.method private springOutDismissTargetAndHideCircle()V
    .locals 1

    .line 1266
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    if-nez v0, :cond_0

    return-void

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->springOut()V

    const/4 v0, 0x0

    .line 1271
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    return-void
.end method

.method private updateBubbleShadowsAndDotPosition(Z)V
    .locals 6

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1516
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bubbles/BubbleView;

    const/4 v4, 0x1

    .line 1517
    invoke-virtual {v3, v4}, Lcom/android/systemui/bubbles/BubbleView;->updateDotVisibility(Z)V

    .line 1519
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v4, v2

    int-to-float v4, v4

    .line 1518
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setZ(F)V

    .line 1524
    new-instance v4, Lcom/android/systemui/bubbles/BubbleStackView$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/bubbles/BubbleStackView$6;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1530
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 1533
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/BubbleView;->getDotPositionOnLeft()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    if-ne v4, v5, :cond_0

    xor-int/lit8 v4, v5, 0x1

    .line 1534
    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/bubbles/BubbleView;->setDotPosition(ZZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateExpandedBubble()V
    .locals 2

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->populateExpandedView()V

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1482
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private updatePointerPosition()V
    .locals 4

    .line 1544
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1549
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v1

    .line 1550
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getBubbleLeft(I)F

    move-result v1

    .line 1551
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1556
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewPadding:I

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 1558
    iget-object p0, v0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setPointerPosition(F)V

    return-void
.end method

.method private updateSystemGestureExcludeRects()V
    .locals 6

    .line 603
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 604
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 607
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 606
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 609
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 608
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 613
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method addBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/bubbles/Bubble;->inflate(Landroid/view/LayoutInflater;Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 693
    iget-object v0, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mClippingParameters:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 694
    iget-object v0, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    if-eqz v0, :cond_0

    .line 695
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressNewDot:Z

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    .line 697
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    .line 699
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    return-void
.end method

.method animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1347
    iget-object v0, p1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getUpdateMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1351
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressFlyout:Z

    if-nez v1, :cond_2

    .line 1355
    iget-object v1, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1357
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    const/4 v1, 0x0

    .line 1360
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    .line 1361
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1363
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1364
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1367
    :cond_0
    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Vnx81abGMMclYnqAiYuaTg3EgOw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$Vnx81abGMMclYnqAiYuaTg3EgOw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;)V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    .line 1389
    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$x4cLoDLloN0oTGF4swiWPoVpuFg;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$x4cLoDLloN0oTGF4swiWPoVpuFg;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/CharSequence;Lcom/android/systemui/bubbles/Bubble;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1404
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x10

    .line 1405
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    :cond_2
    return-void
.end method

.method animateMagnetToDismissTarget(Landroid/view/View;ZFFFF)V
    .locals 7

    .line 1152
    iput-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1156
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {p3}, Lcom/android/systemui/bubbles/BubbleDismissView;->getDismissTargetCenterY()F

    move-result p3

    iget p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    int-to-float p4, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    sub-float v5, p3, p4

    const/4 p3, 0x1

    .line 1158
    iput-boolean p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1160
    new-instance v6, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$oLhNqxGbPa3FqJeraIwHlBcS7tk;

    invoke-direct {v6, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$oLhNqxGbPa3FqJeraIwHlBcS7tk;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    if-ne p1, p0, :cond_0

    .line 1168
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p1, p5, p6, v5, v6}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->magnetToDismiss(FFFLjava/lang/Runnable;)V

    .line 1169
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    goto :goto_0

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-object v2, p1

    move v3, p5

    move v4, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->magnetBubbleToDismiss(Landroid/view/View;FFFLjava/lang/Runnable;)V

    .line 1174
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    .line 1177
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {p1, p3}, Lcom/android/systemui/bubbles/BubbleDismissView;->animateEncircleCenterWithX(Z)V

    goto :goto_2

    .line 1180
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    if-ne p1, p0, :cond_2

    .line 1183
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->demagnetizeFromDismissToPoint(FFFF)V

    .line 1184
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    goto :goto_1

    .line 1186
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->demagnetizeBubbleTo(FFFF)V

    .line 1187
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->animateDesaturateAndDarken(Landroid/view/View;Z)V

    .line 1190
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->animateEncircleCenterWithX(Z)V

    .line 1193
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVibrator:Landroid/os/Vibrator;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    :goto_3
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method collapseStack()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method collapseStack(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack()V

    .line 867
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 2

    .line 1421
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1429
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1431
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1432
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBubbleCount()I
    .locals 0

    .line 1565
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I
    .locals 0
    .param p1    # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1579
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    return-object p0
.end method

.method getExpandedBubbleView()Lcom/android/systemui/bubbles/BubbleView;
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getFlyoutView()Landroid/view/View;
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    return-object p0
.end method

.method getMaxExpandedHeight()I
    .locals 3

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getExpandedY()F

    move-result v0

    float-to-int v0, v0

    .line 1297
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPipDismissHeight:I

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBottomInset()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1298
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    sub-int/2addr v2, p0

    sub-int/2addr v2, v1

    return v2
.end method

.method public getNormalizedXPosition()F
    .locals 3

    .line 1586
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    .line 1587
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 1588
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getNormalizedYPosition()F
    .locals 3

    .line 1595
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x4

    .line 1596
    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 1597
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public getStackPosition()Landroid/graphics/PointF;
    .locals 0

    .line 1601
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getTargetView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 815
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_3

    .line 816
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 817
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 818
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bubbles/BubbleView;

    .line 819
    invoke-direct {p0, v2, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 824
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 828
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 829
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    :cond_4
    return-object p0
.end method

.method getYPositionForExpandedView()F
    .locals 2

    .line 1305
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getStatusBarHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubblePadding:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mPointerHeight:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 639
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    return p0
.end method

.method isInDismissTarget(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->getDismissTarget()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$animateExpansion$10$BubbleStackView(Ljava/lang/Runnable;)V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 920
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$animateExpansion$8$BubbleStackView()V
    .locals 1

    .line 903
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->applyCurrentState()V

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 905
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    return-void
.end method

.method public synthetic lambda$animateExpansion$9$BubbleStackView(Ljava/lang/Runnable;)V
    .locals 0

    .line 911
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 912
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$15$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 1368
    iget-object v0, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    if-nez v0, :cond_0

    return-void

    .line 1374
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressNewDot:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1375
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    .line 1383
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressNewDot:Z

    invoke-virtual {p1, p0, p0}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    return-void
.end method

.method public synthetic lambda$animateInFlyoutForBubble$16$BubbleStackView(Ljava/lang/CharSequence;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 8

    .line 1392
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 1397
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 1398
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v5

    iget-object p2, p2, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    .line 1399
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BubbleView;->getBadgeColor()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterFlyoutHides:Ljava/lang/Runnable;

    move-object v2, p1

    .line 1396
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->showFlyout(Ljava/lang/CharSequence;Landroid/graphics/PointF;FZILjava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$animateMagnetToDismissTarget$11$BubbleStackView()V
    .locals 1

    const/4 v0, 0x0

    .line 1161
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1162
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 1163
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$magnetToStackIfNeededThenAnimateDismissal$12$BubbleStackView(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1215
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1216
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 1217
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    .line 1218
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1219
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    return-void
.end method

.method public synthetic lambda$magnetToStackIfNeededThenAnimateDismissal$13$BubbleStackView(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1223
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    .line 1224
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mShowingDismiss:Z

    .line 1225
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    .line 1226
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->resetDesaturationAndDarken()V

    .line 1227
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$magnetToStackIfNeededThenAnimateDismissal$14$BubbleStackView(Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDismissContainer:Lcom/android/systemui/bubbles/BubbleDismissView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleDismissView;->animateEncirclingCircleDisappearance()V

    if-ne p1, p0, :cond_0

    .line 1213
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    new-instance p3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$e34XM71IP6gJFzDCLRuPf64iTJU;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->implodeStack(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1222
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6IgSc7n-WF13kFj8_shFyg558sU;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$6IgSc7n-WF13kFj8_shFyg558sU;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dismissDraggedOutBubble(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$BubbleStackView()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method public synthetic lambda$new$1$BubbleStackView(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 278
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->hideFlyout()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$2$BubbleStackView(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 385
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p0, :cond_0

    .line 386
    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$BubbleStackView(Landroid/view/WindowInsets;)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method public synthetic lambda$new$4$BubbleStackView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 395
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 396
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 397
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 400
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mImeVisible:Z

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->getYPositionForExpandedView()F

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$SGgilPVMr7ds9JBrPWP0ZRoSeUQ;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$SGgilPVMr7ds9JBrPWP0ZRoSeUQ;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/WindowInsets;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->updateYPosition(Ljava/lang/Runnable;)V

    .line 413
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    .line 398
    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$5$BubbleStackView(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 418
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    .line 419
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget-boolean p3, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackToSimilarPositionAfterRotation(ZF)V

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMoveStackToValidPositionOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public synthetic lambda$new$6$BubbleStackView(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 433
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 434
    invoke-virtual {p1, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p3, v0, p3

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p3, v1

    sub-float p3, v0, p3

    .line 437
    invoke-virtual {p2, p3, p3, p3, v0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 444
    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 447
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 448
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenTargetView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDesaturateAndDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic lambda$setSelectedBubble$7$BubbleStackView(Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    .line 754
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateExpandedBubble()V

    .line 755
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    .line 756
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v0, 0x4

    .line 757
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    const/4 v0, 0x3

    .line 758
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 759
    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 760
    :cond_0
    iget-object p1, p2, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method magnetToStackIfNeededThenAnimateDismissal(Landroid/view/View;FFLjava/lang/Runnable;)V
    .locals 9

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object v0

    .line 1205
    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;

    invoke-direct {v1, p0, p1, p4, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$wNBb9TcVorXyGaagZMMDs0nXEJw;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 1232
    iget-boolean p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAnimatingMagnet:Z

    if-eqz p4, :cond_0

    .line 1235
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    goto :goto_0

    .line 1236
    :cond_0
    iget-boolean p4, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    if-eqz p4, :cond_1

    .line 1239
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    move v8, p3

    .line 1242
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/bubbles/BubbleStackView;->animateMagnetToDismissTarget(Landroid/view/View;ZFFFF)V

    .line 1243
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mAfterMagnet:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public onBubbleDragFinish(Landroid/view/View;FFFF)V
    .locals 0

    .line 995
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 999
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p2, p1, p4, p5}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->snapBubbleBack(Landroid/view/View;FF)V

    .line 1000
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->springOutDismissTargetAndHideCircle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBubbleDragStart(Landroid/view/View;)V
    .locals 0

    .line 975
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->prepareForBubbleDrag(Landroid/view/View;)V

    return-void
.end method

.method public onBubbleDragged(Landroid/view/View;FF)V
    .locals 1

    .line 980
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dragBubbleOut(Landroid/view/View;FF)V

    .line 985
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->springInDismissTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 481
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 482
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mViewUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method onDragFinish(FFFF)V
    .locals 0

    .line 1032
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1036
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->flingStackThenSpringToEdge(FFF)F

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x7

    .line 1037
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    if-gtz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1040
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 1041
    invoke-direct {p0, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->updateBubbleShadowsAndDotPosition(Z)V

    .line 1042
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->springOutDismissTargetAndHideCircle()V

    :cond_2
    :goto_1
    return-void
.end method

.method onDragStart()V
    .locals 2

    .line 1007
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->cancelStackPositionAnimations()V

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 1013
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    const/4 v0, 0x0

    .line 1015
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mDraggingInDismissTarget:Z

    :cond_1
    :goto_0
    return-void
.end method

.method onDragged(FF)V
    .locals 1

    .line 1019
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1023
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->springInDismissTarget()V

    .line 1024
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->moveStackFromTouch(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method onFlyoutDragFinished(FF)V
    .locals 6

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v3, -0x3b060000    # -2000.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_0
    const/high16 v3, 0x44fa0000    # 2000.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/high16 v4, 0x3e800000    # 0.25f

    if-eqz v0, :cond_2

    .line 1090
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3

    goto :goto_2

    .line 1091
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    :goto_2
    move p1, v1

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    cmpl-float v0, p2, v4

    if-lez v0, :cond_5

    goto :goto_4

    :cond_4
    cmpg-float v0, p2, v4

    if-gez v0, :cond_5

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-nez v3, :cond_7

    if-eqz p1, :cond_6

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    .line 1095
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1096
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->animateFlyoutCollapsed(ZF)V

    return-void
.end method

.method onFlyoutDragStart()V
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mHideFlyout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onFlyoutDragged(F)V
    .locals 7

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v0

    .line 1051
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyoutDragDeltaX:F

    if-eqz v0, :cond_0

    neg-float p1, p1

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1055
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_1

    cmpl-float v3, p1, v4

    if-lez v3, :cond_9

    :cond_1
    cmpl-float v2, p1, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    if-eqz v0, :cond_3

    if-gtz v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-gez v1, :cond_5

    :cond_4
    move v3, v5

    :cond_5
    if-eqz v6, :cond_6

    sub-float/2addr p1, v4

    goto :goto_1

    :cond_6
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    :goto_1
    if-eqz v3, :cond_7

    const/4 v0, -0x1

    goto :goto_2

    :cond_7
    move v0, v5

    :goto_2
    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    .line 1072
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    if-eqz v6, :cond_8

    const/4 v5, 0x2

    :cond_8
    int-to-float v2, v5

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v2, p1, v0

    .line 1077
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mFlyout:Lcom/android/systemui/bubbles/BubbleFlyoutView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getRestingTranslationX()F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method onGestureFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 1109
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    .line 1111
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->onGestureFinished()V

    :cond_0
    return-void
.end method

.method onGestureStart()V
    .locals 1

    const/4 v0, 0x1

    .line 1104
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsGestureInProgress:Z

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mImeOffset:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->setImeHeight(I)V

    .line 965
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez p2, :cond_0

    .line 966
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->animateForImeVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 499
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 502
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_top_left:I

    .line 503
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_top_left:I

    .line 504
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 505
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 507
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_top_right:I

    .line 508
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_top_right:I

    .line 509
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 512
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    .line 513
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_bottom_left:I

    .line 514
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 517
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    .line 518
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->bubble_accessibility_action_move_bottom_right:I

    .line 519
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 520
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 523
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 524
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz p0, :cond_0

    .line 525
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 527
    :cond_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 490
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->isIntersecting(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mWasOnLeftBeforeRotation:Z

    .line 466
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 467
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getStackPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mVerticalPosPercentBeforeRotation:F

    .line 469
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mMoveStackToValidPositionOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 456
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 457
    iget-object v1, v0, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleView;->updateViews()V

    .line 458
    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    .line 533
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 536
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p2

    const/high16 v1, 0x100000

    if-ne p1, v1, :cond_1

    .line 540
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    return v0

    :cond_1
    const/high16 v1, 0x80000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 543
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    :cond_2
    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_3

    .line 546
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return v0

    .line 548
    :cond_3
    sget v1, Lcom/android/systemui/R$id;->action_move_top_left:I

    if-ne p1, v1, :cond_4

    .line 549
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    .line 551
    :cond_4
    sget v1, Lcom/android/systemui/R$id;->action_move_top_right:I

    if-ne p1, v1, :cond_5

    .line 552
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    .line 554
    :cond_5
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_left:I

    if-ne p1, v1, :cond_6

    .line 555
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    .line 557
    :cond_6
    sget v1, Lcom/android/systemui/R$id;->action_move_bottom_right:I

    if-ne p1, v1, :cond_7

    .line 558
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FF)V

    return v0

    :cond_7
    return v2
.end method

.method performBackPressIfNeeded()Z
    .locals 1

    .line 1648
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1651
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->performBackPressIfNeeded()Z

    move-result p0

    return p0
.end method

.method removeBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, p1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 711
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    const/4 v0, 0x5

    .line 712
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_0

    .line 714
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "was asked to remove Bubble, but didn\'t find the view! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubbleStackView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updatePointerPosition()V

    return-void
.end method

.method public setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 776
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 782
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateExpansion(Z)V

    .line 783
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 786
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateExpansion(Z)V

    .line 788
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 789
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 791
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->notifyExpansionChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method setExpandedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 677
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/BubbleView;

    .line 679
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleView;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpandedBubble(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setExpandedBubble(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 667
    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setShowInShadeWhenBubble(Z)V

    const/4 p1, 0x1

    .line 668
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 3
    .param p1    # Lcom/android/systemui/bubbles/Bubble;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 743
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 747
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 748
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mExpandedViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 753
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    new-instance v2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$uJnxgk09vcFuKWQJxhffRq51h7c;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$uJnxgk09vcFuKWQJxhffRq51h7c;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;Lcom/android/systemui/bubbles/Bubble;Lcom/android/systemui/bubbles/Bubble;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;->syncSurfaceAndRun(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method setSuppressFlyout(Z)V
    .locals 0

    .line 1333
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressFlyout:Z

    return-void
.end method

.method setSuppressNewDot(Z)V
    .locals 3

    .line 1321
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mSuppressNewDot:Z

    const/4 v0, 0x0

    .line 1323
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/BubbleView;

    const/4 v2, 0x1

    .line 1325
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/bubbles/BubbleView;->setSuppressDot(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    .line 721
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 722
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->requestUpdate()V

    const/4 v0, 0x2

    .line 723
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/systemui/bubbles/Bubble;I)V

    return-void
.end method

.method public updateBubbleOrder(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 727
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 728
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 729
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, v1, Lcom/android/systemui/bubbles/Bubble;->iconView:Lcom/android/systemui/bubbles/BubbleView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;->reorderView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateContentDescription()V
    .locals 10

    .line 568
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 572
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 573
    iget-object v0, v0, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 574
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->stream_notification:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 577
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 582
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->bubble_content_description_single:I

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v1

    aput-object v2, v8, v4

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 586
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/systemui/R$string;->bubble_content_description_stack:I

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v1

    aput-object v2, v9, v4

    .line 587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v7

    .line 586
    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 589
    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 594
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 596
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateDotVisibility(Ljava/lang/String;)V
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->updateDotVisibility()V

    :cond_0
    return-void
.end method
