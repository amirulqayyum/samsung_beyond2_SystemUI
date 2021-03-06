.class final Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
.super Ljava/lang/Object;
.source "AssistHandleLikeHomeBehavior.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;


# instance fields
.field private mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsDozing:Z

.field private mIsHomeHandleHiding:Z

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$1;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 44
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 60
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 61
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleDozingChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleSystemUiStateChange(I)V

    return-void
.end method

.method private callbackForCurrentState()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndStay()V

    goto :goto_1

    .line 108
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :goto_1
    return-void
.end method

.method private handleDozingChanged(Z)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 88
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private handleSystemUiStateChange(I)V
    .locals 1

    .line 93
    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->isHomeHandleHiding(I)Z

    move-result p1

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 98
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private static isHomeHandleHiding(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Current AssistHandleLikeHomeBehavior State:"

    .line 116
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   mIsHomeHandleHiding="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .locals 0

    .line 66
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 67
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    .line 68
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method public onModeDeactivated()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method
