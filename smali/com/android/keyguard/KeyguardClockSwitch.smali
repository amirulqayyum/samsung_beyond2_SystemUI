.class public Lcom/android/keyguard/KeyguardClockSwitch;
.super Landroid/widget/RelativeLayout;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;
    }
.end annotation


# instance fields
.field private mBigClockContainer:Landroid/view/ViewGroup;

.field private final mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field private mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

.field private final mClockManager:Lcom/android/keyguard/clock/ClockManager;

.field private mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

.field private final mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

.field private mClockView:Landroid/widget/TextClock;

.field private mClockViewBold:Landroid/widget/TextClock;

.field private mColorPalette:[I

.field private final mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private mDarkAmount:F

.field private mKeyguardStatusArea:Landroid/view/View;

.field private mShowingHeader:Z

.field private mSmallClockFrame:Landroid/widget/FrameLayout;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSupportsDarkText:Z

.field private final mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mTransition:Landroid/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 147
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$H31kNGqlEfE-tZQZgrBtirdKZKc;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$H31kNGqlEfE-tZQZgrBtirdKZKc;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    .line 154
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$1K4q2TFTethGttjK4WWfYw-lPoo;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$1K4q2TFTethGttjK4WWfYw-lPoo;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 165
    iput-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarState:I

    .line 167
    iput-object p4, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 168
    iput-object p5, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockManager:Lcom/android/keyguard/clock/ClockManager;

    .line 170
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    sget p2, Lcom/android/keyguard/R$id;->default_clock_view:I

    invoke-virtual {p1, p2}, Landroid/transition/Visibility;->addTarget(I)Landroid/transition/Transition;

    .line 173
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 175
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    sget p2, Lcom/android/keyguard/R$id;->default_clock_view_bold:I

    invoke-virtual {p1, p2}, Landroid/transition/Visibility;->addTarget(I)Landroid/transition/Transition;

    .line 176
    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    const/4 p2, 0x0

    .line 177
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 178
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 179
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p1

    const-wide/16 p2, 0x113

    .line 180
    invoke-virtual {p1, p2, p3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 181
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardClockSwitch;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardClockSwitch;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardClockSwitch;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardClockSwitch;)Landroid/widget/TextClock;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    return-object p0
.end method

.method public static synthetic lambda$H31kNGqlEfE-tZQZgrBtirdKZKc(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method private setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_2

    .line 225
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_0

    .line 227
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->onDestroyView()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    :cond_2
    if-nez p1, :cond_3

    .line 237
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 239
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 243
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 245
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 251
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 253
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    .line 257
    :cond_5
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->shouldShowStatusArea()Z

    move-result v0

    if-nez v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_6
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    .line 262
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ClockPlugin;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    .line 264
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    .line 265
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    if-eqz p1, :cond_7

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_7
    return-void
.end method

.method private updateBigClockVisibility()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 406
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 407
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    .line 391
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 393
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "KeyguardClockSwitch:"

    .line 473
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClockPlugin: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClockView: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mClockViewBold: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSmallClockFrame: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBigClockContainer: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardStatusArea: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mDarkAmount: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mShowingHeader: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSupportsDarkText: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mColorPalette: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getClockChangedListener()Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockChangedListener:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    return-object p0
.end method

.method public getCurrentTextColor()I
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method getPreferredY(I)I
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 357
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->getPreferredY(I)I

    move-result p0

    return p0

    .line 359
    :cond_0
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method getStateListener()Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    return-object p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$KeyguardClockSwitch(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 202
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 208
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 213
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorsListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 194
    sget v0, Lcom/android/keyguard/R$id;->default_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    .line 195
    sget v0, Lcom/android/keyguard/R$id;->default_clock_view_bold:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    .line 196
    sget v0, Lcom/android/keyguard/R$id;->clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 197
    sget v0, Lcom/android/keyguard/R$id;->keyguard_status_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 383
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refresh()V

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->refresh()V

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeTick()V

    .line 372
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating clock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardClockSwitch"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setBigClockContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 281
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility()V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    .line 331
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    .line 332
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 333
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setKeyguardShowingHeader(Z)V
    .locals 4

    .line 416
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    if-eq v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 419
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mShowingHeader:Z

    .line 421
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->widget_small_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 423
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_big_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 425
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    div-float v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 426
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mBoldClockTransition:Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    div-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    if-eqz p1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitch$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mTransition:Landroid/transition/Transition;

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 455
    sget p1, Lcom/android/keyguard/R$dimen;->widget_vertical_padding_clock:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/android/keyguard/R$dimen;->title_clock_padding:I

    .line 454
    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    .line 457
    invoke-virtual {v3}, Landroid/widget/TextClock;->getPaddingRight()I

    move-result v3

    .line 456
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/TextClock;->setPadding(IIII)V

    .line 458
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v2}, Landroid/widget/TextClock;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    .line 459
    invoke-virtual {p0}, Landroid/widget/TextClock;->getPaddingRight()I

    move-result p0

    .line 458
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/widget/TextClock;->setPadding(IIII)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 308
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockViewBold:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 301
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    .line 302
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextClock;->setTextSize(IF)V

    return-void
.end method
