.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final sTempProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private mAbsolutePosition:[I

.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSimpleStatusBarEnabled:Z

.field private mIsStaticLayout:Z

.field private mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mIsolatedIconForAnimation:Landroid/view/View;

.field private mIsolatedIconLocation:Landroid/graphics/Rect;

.field private mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field private mNumDots:I

.field private mOpenedAmount:F

.field private mOverflowWidth:I

.field private mReplacingIcons:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSimpleStatusBarMaxNotificationNum:I

.field private mSpeedBumpIndex:I

.field private mStaticDotDiameter:I

.field private mStaticDotRadius:I

.field private mVisualOverflowStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    const-wide/16 v3, 0x64

    .line 82
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 83
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    sget v1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->CONTENT_FADE_DURATION:I

    int-to-long v1, v1

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;-><init>()V

    sget v1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->CONTENT_FADE_DURATION:I

    int-to-long v1, v1

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 138
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    const/high16 p2, -0x80000000

    .line 143
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 p2, -0x31000000

    .line 144
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 145
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/4 p2, -0x1

    .line 148
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 149
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 150
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 p2, 0x0

    .line 152
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 154
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 164
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    const/4 p2, 0x0

    .line 167
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSimpleStatusBarEnabled:Z

    .line 168
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSimpleStatusBarMaxNotificationNum:I

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 174
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return p0
.end method

.method static synthetic access$1000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return p0
.end method

.method static synthetic access$300()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return p0
.end method

.method static synthetic access$600()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    return-object p0
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 2

    const/4 v0, 0x0

    .line 359
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 360
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .line 516
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 517
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    .line 523
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 524
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return v0
.end method

.method private getLayoutEnd()F
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getMaxOverflowStart()F
    .locals 1

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private initDimens()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_icon_dot_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_dot_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    .line 180
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->config_simple_status_bar_max_notification_num:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSimpleStatusBarMaxNotificationNum:I

    return-void
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 309
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v0, :cond_1

    return v1

    .line 312
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 313
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    .line 317
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 318
    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private setIconSize(I)V
    .locals 2

    .line 255
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 256
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    return-void
.end method

.method private updateState()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    return-void
.end method


# virtual methods
.method public applyIconStates()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 266
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 267
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v3, :cond_0

    .line 270
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 273
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 274
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 275
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    return-void
.end method

.method public calculateIconTranslations()V
    .locals 18

    move-object/from16 v0, p0

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 391
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    .line 394
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSimpleStatusBarEnabled:Z

    if-eqz v3, :cond_1

    .line 395
    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSimpleStatusBarMaxNotificationNum:I

    goto :goto_1

    :cond_1
    move v3, v2

    .line 400
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v4

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getMaxOverflowStart()F

    move-result v5

    const/4 v6, 0x0

    .line 402
    iput v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    const/4 v7, 0x0

    .line 403
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 404
    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v11

    if-ge v7, v11, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    move v12, v1

    move v11, v8

    move v1, v9

    :goto_3
    if-ge v1, v2, :cond_13

    .line 406
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 407
    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 408
    iput v12, v15, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 409
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v13, :cond_3

    .line 410
    iput-object v15, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 412
    :cond_3
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    if-eq v13, v8, :cond_4

    if-lt v1, v13, :cond_4

    iget v13, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    cmpl-float v13, v13, v6

    if-gtz v13, :cond_5

    :cond_4
    if-lt v1, v3, :cond_6

    :cond_5
    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    move v13, v9

    :goto_4
    add-int/lit8 v10, v2, -0x1

    if-ne v1, v10, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    move v10, v9

    .line 415
    :goto_5
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v8, :cond_8

    instance-of v8, v14, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v8, :cond_8

    .line 416
    move-object v8, v14

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v8

    move/from16 v16, v8

    goto :goto_6

    :cond_8
    const/high16 v16, 0x3f800000    # 1.0f

    .line 418
    :goto_6
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_a

    if-eqz v10, :cond_9

    if-nez v7, :cond_9

    if-nez v13, :cond_9

    const/4 v10, 0x1

    goto :goto_7

    :cond_9
    move v10, v9

    .line 421
    :cond_a
    :goto_7
    iput v9, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eqz v10, :cond_b

    .line 424
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    goto :goto_8

    .line 425
    :cond_b
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v8, v8

    sub-float v8, v5, v8

    :goto_8
    cmpl-float v8, v12, v8

    if-lez v8, :cond_c

    const/4 v6, -0x1

    const/4 v8, 0x1

    goto :goto_9

    :cond_c
    move v8, v9

    const/4 v6, -0x1

    :goto_9
    if-ne v11, v6, :cond_12

    if-nez v13, :cond_d

    if-eqz v8, :cond_12

    :cond_d
    if-eqz v10, :cond_e

    if-nez v13, :cond_e

    add-int/lit8 v6, v1, -0x1

    goto :goto_a

    :cond_e
    move v6, v1

    .line 429
    :goto_a
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-nez v8, :cond_f

    move v8, v12

    goto :goto_b

    .line 431
    :cond_f
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    :goto_b
    iput v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    if-nez v13, :cond_10

    .line 432
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v8, :cond_11

    .line 433
    :cond_10
    iget v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    :cond_11
    move v11, v6

    .line 436
    :cond_12
    iget v6, v15, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    mul-float v6, v6, v16

    add-float/2addr v12, v6

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    goto/16 :goto_3

    .line 438
    :cond_13
    iput v9, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v1, -0x1

    if-eq v11, v1, :cond_17

    .line 440
    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    move v12, v1

    move v1, v11

    :goto_c
    if-ge v1, v2, :cond_18

    .line 442
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 443
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 444
    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v4, v5

    .line 445
    iput v12, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 446
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_16

    if-nez v5, :cond_14

    .line 447
    iget v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const v7, 0x3f4ccccd    # 0.8f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_14

    .line 448
    iput v9, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_d

    .line 450
    :cond_14
    iput v6, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 451
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    .line 453
    :goto_d
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-ne v5, v6, :cond_15

    mul-int/lit8 v4, v4, 0x1

    :cond_15
    int-to-float v4, v4

    iget v5, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    mul-float/2addr v4, v5

    add-float/2addr v12, v4

    .line 455
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    goto :goto_e

    :cond_16
    const/4 v4, 0x2

    .line 457
    iput v4, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    if-lez v2, :cond_18

    add-int/lit8 v1, v2, -0x1

    .line 461
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 462
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 463
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 466
    :cond_18
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1c

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v1

    cmpg-float v1, v12, v1

    if-gez v1, :cond_1c

    .line 469
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mFirstVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v1, :cond_19

    const/4 v6, 0x0

    goto :goto_f

    :cond_19
    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 472
    :goto_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v1, :cond_1a

    .line 473
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v6, v1, v6

    move/from16 v17, v6

    goto :goto_10

    :cond_1a
    const/16 v17, 0x0

    .line 476
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v4

    sub-float/2addr v1, v4

    sub-float v1, v1, v17

    div-float/2addr v1, v3

    const/4 v4, -0x1

    if-eq v11, v4, :cond_1b

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v4

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowStart:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float v1, v4, v3

    :cond_1b
    move v4, v9

    :goto_11
    if-ge v4, v2, :cond_1c

    .line 486
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 487
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 488
    iget v6, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    add-float/2addr v6, v1

    iput v6, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 492
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v9

    :goto_12
    if-ge v1, v2, :cond_1d

    .line 494
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 495
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 496
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v4

    iput v6, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 499
    :cond_1d
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1e

    .line 500
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-eqz v1, :cond_1e

    .line 504
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    aget v4, v4, v9

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 505
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v13, v5, v4

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v13, v0

    div-float/2addr v13, v3

    sub-float/2addr v2, v13

    iput v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 506
    iput v9, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    :cond_1e
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    .line 561
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 562
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getFinalTranslationX()I
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 572
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mLastVisibleIconState:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    .line 575
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object p0
.end method

.method public getNoOverflowExtraPadding()I
    .locals 3

    .line 646
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 650
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverflowWidth:I

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getPartialOverflowExtraPadding()I
    .locals 3

    .line 629
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasPartialOverflow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 633
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    rsub-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotDiameter:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result v1

    add-int/2addr v1, v0

    .line 637
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 638
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getFinalTranslationX()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public hasOverflow()Z
    .locals 0

    .line 610
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasPartialOverflow()Z
    .locals 1

    .line 620
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mNumDots:I

    const/4 v0, 0x1

    if-lez p0, :cond_0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x10000

    .line 191
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float v4, p0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    .line 235
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move p4, p3

    .line 236
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_1

    .line 237
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 240
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 241
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 243
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    if-nez p4, :cond_0

    .line 245
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAbsolutePosition:[I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 249
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz p1, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5

    .line 281
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 283
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 284
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    if-eqz v0, :cond_0

    .line 286
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 287
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->access$002(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    .line 293
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 294
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v0, :cond_2

    .line 295
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 297
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 300
    :cond_3
    :goto_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_4

    .line 301
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 4

    .line 327
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 329
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_2

    .line 330
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v0

    .line 331
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 332
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v0

    .line 335
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v1, :cond_0

    .line 336
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 341
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    :cond_2
    return-void
.end method

.method public resetViewStates()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 369
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 370
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 371
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 372
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 373
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    iput v4, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    .line 374
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 375
    instance-of v3, v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_2

    .line 376
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateResources()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0

    .line 540
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0

    .line 547
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0

    .line 554
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 664
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 665
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 666
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 667
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 670
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0

    .line 583
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3

    .line 587
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    xor-int/lit8 v1, p2, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    const/4 v0, 0x0

    .line 589
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 590
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 591
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    .line 592
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsStaticLayout(Z)V
    .locals 0

    .line 536
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    return-void
.end method

.method public setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconLocation:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    :cond_0
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0

    .line 606
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    return-void
.end method

.method public setReplacingIcons(Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setSimpleStatusBarEnabled(Z)V
    .locals 0

    .line 822
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSimpleStatusBarEnabled:Z

    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0

    .line 602
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    return-void
.end method

.method public showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 683
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Landroid/view/View;

    .line 685
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->updateState()V

    return-void
.end method
