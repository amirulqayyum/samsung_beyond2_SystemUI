.class public Lcom/android/systemui/bubbles/BubbleExpandedView;
.super Landroid/widget/LinearLayout;
.source "BubbleExpandedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;
    }
.end annotation


# instance fields
.field private mActivityView:Landroid/app/ActivityView;

.field private mActivityViewReady:Z

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private mBubbleHeight:I

.field private mBubbleIntent:Landroid/app/PendingIntent;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mKeyboardVisible:Z

.field private mMinHeight:I

.field private mNeedsNewHeight:Z

.field private mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mNotificationManagerService:Landroid/app/INotificationManager;

.field private mOnBubbleBlockedListener:Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mPointerHeight:I

.field private mPointerMargin:I

.field private mPointerView:Landroid/view/View;

.field private mPointerWidth:I

.field private mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

.field private mSettingsIconHeight:I

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

.field private mStateCallback:Landroid/app/ActivityView$StateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    .line 96
    const-class p2, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 102
    new-instance p2, Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_expanded_default_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->bubble_pointer_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    :try_start_0
    const-string p1, "notification"

    .line 157
    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 156
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BubbleExpandedView"

    .line 159
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method private applyRowState(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 5

    .line 477
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reset()V

    const/4 p0, 0x0

    .line 478
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 479
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    .line 480
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 481
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnAmbient(Z)V

    .line 482
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 483
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setClipTopAmount(I)V

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    const/4 v1, 0x1

    .line 485
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIconsVisible(Z)V

    .line 491
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 492
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 494
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 495
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 496
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 497
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dark:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 498
    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v4, -0x1

    .line 499
    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 500
    iput v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 501
    iput v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->yTranslation:F

    .line 502
    iput v0, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->zTranslation:F

    .line 503
    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 504
    iput v3, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    .line 505
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 506
    iput-boolean p0, v2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 507
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    return-void
.end method

.method private getBubbleIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/app/PendingIntent;
    .locals 1

    .line 522
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 524
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDimenForPackageUser(ILjava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    move p3, v0

    .line 569
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    .line 570
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "BubbleExpandedView"

    const-string p2, "Couldn\'t find desired height res id"

    .line 575
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    return v0
.end method

.method private getSettingsIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    .line 511
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_BUBBLE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 512
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 513
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 514
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 515
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 516
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method private logBubbleClickEvent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 13

    .line 547
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 549
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    .line 551
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 552
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/systemui/bubbles/Bubble;)I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 553
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v6

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 555
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedXPosition()F

    move-result v8

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 556
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getNormalizedYPosition()F

    move-result v9

    .line 557
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->showInShadeWhenBubble()Z

    move-result v10

    .line 558
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isForegroundService()Z

    move-result v11

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 559
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    const/16 v1, 0x95

    move v7, p2

    .line 548
    invoke-static/range {v1 .. v12}, Landroid/util/StatsLog;->write(ILjava/lang/String;Ljava/lang/String;IIIIFFZZZ)I

    return-void
.end method

.method private updateExpandedView()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getBubbleIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    .line 330
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setVisibility(I)V

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateView()V

    return-void
.end method

.method private updateSettingsContentDescription()V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->bubbles_settings_button_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private usingActivityView()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method applyThemeAttrs()V
    .locals 4

    .line 212
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->BubbleExpandedView:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    sget v1, Lcom/android/systemui/R$styleable;->BubbleExpandedView_android_colorBackgroundFloating:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 215
    sget v2, Lcom/android/systemui/R$styleable;->BubbleExpandedView_android_dialogCornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 217
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 223
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v2}, Landroid/app/ActivityView;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public cleanUpExpandedState()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-nez v0, :cond_0

    return-void

    .line 454
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    if-eqz v1, :cond_1

    .line 455
    invoke-virtual {v0}, Landroid/app/ActivityView;->release()V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewReady:Z

    return-void
.end method

.method public getVirtualDisplayId()I
    .locals 1

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getVirtualDisplayId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic lambda$onClick$1$BubbleExpandedView(Landroid/content/Intent;)V
    .locals 2

    .line 404
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 405
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->logBubbleClickEvent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$BubbleExpandedView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 201
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 202
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    .line 207
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 400
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    if-ne p1, v0, :cond_1

    .line 401
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 402
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getSettingsIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 403
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iBWZJs6SpKXryYoaz8vCiAaSUqI;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iBWZJs6SpKXryYoaz8vCiAaSUqI;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->collapseStack(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 230
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    .line 232
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 233
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    .line 234
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    sget v1, Lcom/android/systemui/R$id;->pointer_view:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    .line 169
    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    .line 170
    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    .line 173
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/TriangleShape;->create(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->bubble_expanded_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    .line 180
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v0, Landroid/app/ActivityView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 198
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method performBackPressIfNeeded()Z
    .locals 1

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->performBackPress()V

    const/4 p0, 0x1

    return p0
.end method

.method public populateExpandedView()V
    .locals 2

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView;->setCallback(Landroid/app/ActivityView$StateCallback;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 307
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/BubbleStackView;Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 268
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 269
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppName:Ljava/lang/String;

    .line 273
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 274
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const p3, 0xc2200

    .line 273
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->showSettingsIcon()V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateExpandedView()V

    return-void
.end method

.method public setOnBlockedListener(Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mOnBubbleBlockedListener:Lcom/android/systemui/bubbles/BubbleExpandedView$OnBubbleBlockedListener;

    return-void
.end method

.method public setPointerPosition(F)V
    .locals 2

    .line 439
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 441
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 442
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showSettingsIcon()V
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateSettingsContentDescription()V

    .line 418
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public update(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 318
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateSettingsContentDescription()V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to update entry with different key, new entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " old entry: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleExpandedView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method updateHeight()V
    .locals 5

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getMaxExpandedHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_3

    .line 362
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 365
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 366
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 367
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 365
    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getDimenForPackageUser(ILjava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    .line 369
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 370
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    :goto_2
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    goto :goto_3

    .line 372
    :cond_3
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    goto :goto_0

    .line 374
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v3}, Lcom/android/systemui/bubbles/BubbleStackView;->getMaxExpandedHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 376
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 377
    iget v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 378
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v3}, Landroid/app/ActivityView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    .line 380
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v1, :cond_7

    float-to-int v0, v0

    .line 383
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 384
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleHeight:I

    .line 385
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0, v3}, Landroid/app/ActivityView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    goto :goto_6

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    :goto_5
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleHeight:I

    :cond_7
    :goto_6
    return-void
.end method

.method updateInsets(Landroid/view/WindowInsets;)V
    .locals 3

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getLocationOnScreen()[I

    move-result-object v1

    const/4 v2, 0x1

    .line 247
    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v2}, Landroid/app/ActivityView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 248
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 249
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p1

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    .line 250
    iget p1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-static {p1, p1, p1, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 426
    invoke-virtual {v0}, Landroid/app/ActivityView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    .line 427
    invoke-virtual {v0}, Landroid/app/ActivityView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->onLocationChanged()V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNotifRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 430
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyRowState(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 432
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    return-void
.end method
