.class public final Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;
.super Ljava/lang/Object;
.source "SecQSColoringPresenterImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;

    invoke-direct {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;->INSTANCE:Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;->INSTANCE:Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;
    .locals 1

    .line 17
    new-instance v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;

    invoke-direct {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;
    .locals 0

    .line 13
    invoke-static {}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;->provideInstance()Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;->get()Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;

    move-result-object p0

    return-object p0
.end method
