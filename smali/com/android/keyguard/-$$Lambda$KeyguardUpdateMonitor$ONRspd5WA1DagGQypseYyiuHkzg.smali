.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ONRspd5WA1DagGQypseYyiuHkzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ONRspd5WA1DagGQypseYyiuHkzg;->f$0:I

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ONRspd5WA1DagGQypseYyiuHkzg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ONRspd5WA1DagGQypseYyiuHkzg;->f$0:I

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$ONRspd5WA1DagGQypseYyiuHkzg;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFingerprintError$9(ILjava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
