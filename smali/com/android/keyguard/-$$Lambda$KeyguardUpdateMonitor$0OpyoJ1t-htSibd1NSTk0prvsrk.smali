.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$0OpyoJ1t-htSibd1NSTk0prvsrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$0OpyoJ1t-htSibd1NSTk0prvsrk;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$0OpyoJ1t-htSibd1NSTk0prvsrk;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handlePackageChanged$28(Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
