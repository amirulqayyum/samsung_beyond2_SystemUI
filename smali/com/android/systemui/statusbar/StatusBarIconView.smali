.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DOT_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIMATION_DURATION_FAST:I

.field private mAlwaysScaleIcon:Z

.field private mAnimationStartColor:I

.field private final mBlocked:Z

.field private mCachedContrastBackgroundColor:I

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mContrastedDrawableColor:I

.field private mCurrentSetColor:I

.field private mDarkAmount:F

.field private mDecorColor:I

.field private mDensity:I

.field private mDismissed:Z

.field private mDotAnimator:Landroid/animation/ObjectAnimator;

.field private mDotAppearAmount:F

.field private final mDotPaint:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mDrawableColor:I

.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mIconAppearAmount:F

.field private mIconAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIconColor:I

.field private mIconScale:F

.field private mIsInShelf:Z

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field private mMatrix:[F

.field private mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mNightMode:Z

.field private mNotification:Landroid/service/notification/StatusBarNotification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mOnDismissListener:Ljava/lang/Runnable;

.field private mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStaticDotRadius:I

.field private mStatusBarIconDrawingSize:I

.field private mStatusBarIconDrawingSizeDark:I

.field private mStatusBarIconSize:I

.field private mSystemIconDefaultScale:F

.field private mSystemIconDesiredHeight:F

.field private mSystemIconIntrinsicHeight:F

.field private mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const-string v1, "iconAppearAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$2;

    const-string v1, "dot_appear_amount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 83
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    const/high16 p2, 0x41880000    # 17.0f

    .line 84
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    .line 85
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDefaultScale:F

    const/16 p2, 0x64

    .line 86
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    const/4 p2, 0x1

    .line 121
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 122
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 123
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 139
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 140
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 150
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 151
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 160
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 315
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 316
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 317
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 3

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 83
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    const/high16 v0, 0x41880000    # 17.0f

    .line 84
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    .line 85
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDefaultScale:F

    const/16 v0, 0x64

    .line 86
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    const/4 v0, 0x1

    .line 121
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 122
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 123
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 136
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 139
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 140
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 150
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 151
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 152
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 160
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 175
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 176
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 177
    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    .line 178
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    .line 179
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget p4, Lcom/android/systemui/R$drawable;->notification_number_text_color:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 183
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 186
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->initializeDecorColor()V

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/StatusBarIconView;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 585
    :try_start_0
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StatusBarIconView"

    const-string v3, "Unable to recover builder"

    .line 588
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.appInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 592
    instance-of v2, v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 593
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 593
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 598
    :goto_0
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 599
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 600
    iget-object p1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 603
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 605
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 606
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 608
    :goto_1
    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_notification_icon:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 435
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 440
    :cond_0
    iget-object p1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 443
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 444
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 446
    const-class p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_0

    .line 451
    :cond_2
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_scale_factor:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 453
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    :goto_0
    cmpl-float p2, p0, v1

    if-nez p2, :cond_3

    return-object p1

    .line 461
    :cond_3
    new-instance p2, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object p2
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 424
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getIconHeight()F
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    return p0

    .line 238
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    return p0
.end method

.method private initializeDecorColor()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_1

    .line 622
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x10601d5

    goto :goto_0

    :cond_0
    const v1, 0x10601d6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    :cond_1
    return-void
.end method

.method private isSignalClusterTypeIcon()Z
    .locals 2

    .line 1017
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_MULTI_SIM:Z

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    const-string v1, "ims_volte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    const-string v0, "ims_volte2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private maybeUpdateIconScaleDimens()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForSystemIcons()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->isSignalClusterTypeIcon()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_system_icon_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 198
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForNotifications()V

    :cond_2
    :goto_1
    return-void
.end method

.method private reloadDimens()V
    .locals 3

    .line 276
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 277
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 278
    sget v2, Lcom/android/systemui/R$dimen;->overflow_dot_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    .line 280
    sget v2, Lcom/android/systemui/R$dimen;->notification_icon_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 284
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    .line 285
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 286
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size:I

    .line 287
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    if-eqz v0, :cond_1

    .line 289
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    :cond_1
    const v0, 0x1050408

    .line 291
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    .line 293
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 294
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    :cond_2
    const v0, 0x1050407

    .line 300
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    .line 302
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDefaultScale:F

    return-void
.end method

.method private runRunnable(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 858
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private setColorInternal(I)V
    .locals 0

    .line 652
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    return-void
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 561
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object p1

    .line 562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateContrastedStaticColor()V
    .locals 4

    .line 734
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 735
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void

    .line 739
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 740
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->satisfiesTextContrast(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 743
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v2, 0x1

    .line 746
    aget v1, v1, v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    const/4 v0, 0x0

    .line 749
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 750
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    .line 753
    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void
.end method

.method private updateDecorColor()V
    .locals 3

    .line 629
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 630
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 633
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateDrawable(Z)Z
    .locals 5

    const-string v0, "StatusBarIconView"

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 402
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No icon for slot "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return v4

    .line 404
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOM while inflating "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for slot "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateIconColor()V
    .locals 4

    .line 657
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 659
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    .line 660
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 662
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 664
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    const v2, 0x3f2b851f    # 0.67f

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    mul-float/2addr v3, v2

    invoke-static {v1, v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateTintMatrix([FIF)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;->setColorMatrixArray([F)V

    const/4 v0, 0x0

    .line 666
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    :goto_0
    return-void
.end method

.method private updateIconScaleForNotifications()V
    .locals 3

    .line 213
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 217
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 218
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    return-void
.end method

.method private updateIconScaleForSystemIcons()V
    .locals 2

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 227
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    goto :goto_0

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDefaultScale:F

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    :goto_0
    return-void
.end method

.method private updatePivot()V
    .locals 4

    .line 961
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 962
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method

.method private static updateTintMatrix([FIF)V
    .locals 2

    const/4 v0, 0x0

    .line 678
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 679
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 680
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x9

    aput v0, p0, v1

    .line 681
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xe

    aput v0, p0, v1

    .line 682
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    add-float/2addr p1, p2

    const/16 p2, 0x12

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method protected debug(I)V
    .locals 2

    .line 521
    invoke-super {p0, p1}, Landroid/widget/ImageView;->debug(I)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/widget/ImageView;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/widget/ImageView;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "icon="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 3

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p0, 0x4

    if-eq v0, p0, :cond_2

    return v2

    .line 343
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 341
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p2

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move p0, v2

    :goto_0
    return p0
.end method

.method public executeOnLayout(Ljava/lang/Runnable;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method getContrastedStaticDrawableColor(I)I
    .locals 1

    .line 726
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 727
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 728
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 730
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return p0
.end method

.method public getDotAppearAmount()F
    .locals 0

    .line 893
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    return p0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 933
    invoke-super {p0, p1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 934
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 935
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p0

    .line 936
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 937
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 938
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 939
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getIconAppearAmount()F
    .locals 0

    .line 870
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    return p0
.end method

.method public getIconScale()F
    .locals 0

    .line 247
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return p0
.end method

.method public getIconScaleFullyDark()F
    .locals 1

    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getNotification()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getStaticDrawableColor()I
    .locals 0

    .line 715
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    return p0
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 874
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIconBlocked()Z
    .locals 0

    .line 1006
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    .line 1001
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$StatusBarIconView(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 155
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 154
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p1

    .line 156
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 252
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 254
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 255
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 260
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 262
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    if-eq p1, v0, :cond_2

    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->initializeDecorColor()V

    :cond_2
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 986
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 987
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 990
    monitor-enter p0

    .line 991
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 992
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 992
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 492
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 493
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 494
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float v3, v0, v2

    mul-float/2addr v0, v2

    .line 495
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 494
    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 496
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 497
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 504
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 506
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 507
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2

    .line 508
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    mul-float/2addr v3, v2

    goto :goto_0

    :cond_2
    sub-float/2addr v2, v3

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    .line 512
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    .line 514
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 515
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 470
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 471
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 952
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 953
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 954
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 955
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 957
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 486
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRtlPropertiesChanged(I)V

    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 478
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 479
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 8

    .line 528
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v1, v0, :cond_0

    .line 531
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 539
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 540
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 541
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 542
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 543
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    .line 544
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 545
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 546
    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    .line 550
    :cond_1
    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v0

    sub-int v0, v5, v0

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    .line 551
    iget v0, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    .line 552
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 555
    :cond_2
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v2, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, v3

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    .line 556
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v3, v1, v5

    sub-int v0, v2, v0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 7

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 355
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_2

    iget-boolean v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 357
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_3

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v5, v6, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 359
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 360
    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    if-nez v0, :cond_5

    .line 362
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 364
    :cond_4
    sget v0, Lcom/android/systemui/R$id;->icon_is_grayscale:I

    invoke-virtual {p0, v0, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    :cond_5
    if-nez v3, :cond_6

    .line 369
    iget v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_6
    if-nez v5, :cond_9

    .line 373
    iget v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->config_statusBarShowNumber:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 376
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$drawable;->ic_notification_overlay:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 379
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    goto :goto_4

    .line 381
    :cond_8
    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 382
    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 384
    :goto_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_9
    if-nez v4, :cond_b

    .line 387
    iget-boolean p1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :cond_b
    return v1
.end method

.method public setDark(ZZJ)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 903
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 616
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    .line 617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    return-void
.end method

.method public setDismissed()V
    .locals 1

    const/4 v0, 0x1

    .line 970
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDismissed:Z

    .line 971
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 972
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setDotAppearAmount(F)V
    .locals 1

    .line 878
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 879
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    .line 880
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIconAppearAmount(F)V
    .locals 1

    .line 863
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 864
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 865
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIconColor(IZ)V
    .locals 2

    .line 686
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    if-eq v0, p1, :cond_3

    .line 687
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 691
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 695
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 696
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 697
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 698
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 699
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 700
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/StatusBarIconView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 707
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 709
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIsInShelf(Z)V
    .locals 0

    .line 943
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsInShelf:Z

    return-void
.end method

.method public setNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Landroid/app/Notification;)V

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 0

    .line 644
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 645
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    .line 646
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 647
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 648
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 886
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    if-eqz p0, :cond_0

    .line 888
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setVisibleState(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 758
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 762
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 771
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;J)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 785
    iget v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    const/4 v4, 0x0

    if-eq v1, v3, :cond_d

    .line 786
    iput v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 787
    iget-object v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 788
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 790
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    .line 791
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_9

    .line 795
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    .line 798
    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v9, v8

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move-object v9, v8

    move v8, v6

    .line 800
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result v10

    cmpl-float v11, v8, v10

    const-wide/16 v12, 0x64

    const-wide/16 v14, 0x0

    const/4 v3, 0x2

    if-eqz v11, :cond_4

    .line 802
    sget-object v11, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v5, v3, [F

    aput v10, v5, v4

    aput v8, v5, v7

    invoke-static {v0, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 804
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 805
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v8, p4, v14

    if-nez v8, :cond_3

    move-wide v8, v12

    goto :goto_1

    :cond_3
    move-wide/from16 v8, p4

    :goto_1
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 807
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView$4;

    invoke-direct {v8, v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$4;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 814
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-nez v1, :cond_5

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_3

    :cond_5
    move/from16 v16, v6

    .line 819
    :goto_3
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    if-ne v1, v7, :cond_6

    .line 822
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/high16 v16, 0x3f800000    # 1.0f

    .line 824
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

    move-result v1

    cmpl-float v8, v16, v1

    if-eqz v8, :cond_8

    .line 826
    sget-object v8, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v4

    aput v16, v3, v7

    invoke-static {v0, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    .line 828
    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 829
    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v3, p4, v14

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move-wide/from16 v12, p4

    :goto_4
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    xor-int/lit8 v1, v5, 0x1

    .line 832
    iget-object v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarIconView$5;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$5;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 841
    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    move v4, v7

    goto :goto_7

    :cond_8
    move v4, v5

    goto :goto_7

    :cond_9
    if-nez v1, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    move v3, v6

    .line 845
    :goto_5
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    if-ne v1, v7, :cond_b

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    if-nez v1, :cond_c

    const/high16 v6, 0x40000000    # 2.0f

    .line 846
    :cond_c
    :goto_6
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    :cond_d
    :goto_7
    if-nez v4, :cond_e

    .line 852
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarIconView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDrawable()V
    .locals 1

    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    return-void
.end method

.method public updateResources()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method
