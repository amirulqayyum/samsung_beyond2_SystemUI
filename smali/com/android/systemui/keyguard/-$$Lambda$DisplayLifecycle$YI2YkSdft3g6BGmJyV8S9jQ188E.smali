.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$YI2YkSdft3g6BGmJyV8S9jQ188E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$YI2YkSdft3g6BGmJyV8S9jQ188E;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$YI2YkSdft3g6BGmJyV8S9jQ188E;->f$0:I

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchDisplayChanged$1(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V

    return-void
.end method
