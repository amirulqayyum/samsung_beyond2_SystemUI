.class final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

.field private viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2001
    invoke-direct {p0, p2}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 1995
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 2007
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    return-void
.end method


# virtual methods
.method public createFaceWidget()Lcom/android/systemui/facewidget/FaceWidgetContainer;
    .locals 2

    .line 2156
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2158
    invoke-static {v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$14000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    .line 2157
    invoke-static {v1}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2160
    invoke-static {p0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createKeyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 7

    .line 2083
    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2085
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2087
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2088
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2089
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2090
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2091
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/keyguard/clock/ClockManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V

    return-object v6
.end method

.method public createKeyguardMessageArea()Lcom/android/keyguard/KeyguardMessageArea;
    .locals 3

    .line 2108
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2110
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2112
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2113
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2114
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createKeyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;
    .locals 4

    .line 2096
    new-instance v0, Lcom/android/keyguard/KeyguardSliceView;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2098
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2100
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2101
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2102
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2103
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 10

    .line 2119
    new-instance v9, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2121
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2123
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2124
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2125
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2126
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2127
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2128
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2129
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2130
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/dock/DockManager;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2131
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Landroid/os/Handler;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Landroid/os/Handler;)V

    return-object v9
.end method

.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 10

    .line 2036
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2038
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2040
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2042
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$14300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2043
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$14400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2044
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2045
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/AmbientPulseManager;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2046
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$14500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2047
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2048
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2049
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2050
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2051
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2036
    invoke-static/range {v1 .. v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout_Factory;->newNotificationStackScrollLayout(Landroid/content/Context;Landroid/util/AttributeSet;ZLjava/lang/Object;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    return-object p0
.end method

.method public createPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 8

    .line 2056
    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2058
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2060
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2061
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2062
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2063
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2064
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2065
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2066
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$14500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2067
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V

    return-object v7
.end method

.method public createQSCarrierGroup()Lcom/android/systemui/qs/QSCarrierGroup;
    .locals 4

    .line 2072
    new-instance v0, Lcom/android/systemui/qs/QSCarrierGroup;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2074
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2076
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2077
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2078
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/qs/QSCarrierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method

.method public createQSPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 3

    .line 2136
    new-instance v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2138
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2140
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2141
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method

.method public createQsFooter()Lcom/android/systemui/qs/QSFooterImpl;
    .locals 7

    .line 2023
    new-instance v6, Lcom/android/systemui/qs/QSFooterImpl;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2025
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2027
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2028
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2029
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2030
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2031
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v6
.end method

.method public createQsHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;
    .locals 3

    .line 2012
    new-instance v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2014
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2016
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2017
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 2018
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    return-object v0
.end method

.method public createQuickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 3

    .line 2146
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2148
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 2150
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 2151
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method
