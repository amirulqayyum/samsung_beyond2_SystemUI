.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusIconContainer$4mQQfn42pMEA3rPrbCdU68Oy1lM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusIconContainer$4mQQfn42pMEA3rPrbCdU68Oy1lM;->f$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusIconContainer$4mQQfn42pMEA3rPrbCdU68Oy1lM;->f$0:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->lambda$onConfigurationChanged$1$StatusIconContainer()V

    return-void
.end method
