.class public final synthetic Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/os/Bundle;

.field private final synthetic f$2:Landroid/os/Bundle;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$2:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockProvider$jQuEYB71wNR39OioRgaidZR_UXc;->f$3:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockProvider;->lambda$call$2(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockManager;)V

    return-void
.end method
