.class final enum Lcom/android/systemui/KeyguardTextBuilder$PromptReason;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PromptReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/KeyguardTextBuilder$PromptReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

.field public static final enum DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

.field public static final enum ItPolicy:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

.field public static final enum Restart:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

.field public static final enum Timeout:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;


# instance fields
.field private mPromptReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    const/4 v1, 0x0

    const-string v2, "Restart"

    const-string v3, "restart"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    .line 91
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    const/4 v2, 0x1

    const-string v3, "Timeout"

    const-string/jumbo v4, "timeout"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    .line 92
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    const/4 v3, 0x2

    const-string v4, "DeviceAdmin"

    const-string v5, "deviceadmin"

    invoke-direct {v0, v4, v3, v5}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    .line 93
    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    const/4 v4, 0x3

    const-string v5, "ItPolicy"

    const-string v6, "itpolicy"

    invoke-direct {v0, v5, v4, v6}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    .line 89
    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/KeyguardTextBuilder$PromptReason;
    .locals 1

    .line 89
    const-class v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/KeyguardTextBuilder$PromptReason;
    .locals 1

    .line 89
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v0}, [Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->mPromptReason:Ljava/lang/String;

    return-object p0
.end method
