.class public final enum Lcom/sec/enterprise/firewall/FirewallResponse$Result;
.super Ljava/lang/Enum;
.source "FirewallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/firewall/FirewallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/firewall/FirewallResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/firewall/FirewallResponse$Result;

.field public static final enum FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

.field public static final enum NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

.field public static final enum PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

.field public static final enum SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    .line 20
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    const/4 v2, 0x1

    const-string v3, "NO_CHANGES"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    .line 21
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    .line 22
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    const/4 v4, 0x3

    const-string v5, "PARTIAL"

    invoke-direct {v0, v5, v4}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    .line 18
    sget-object v5, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aput-object v5, v0, v1

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->PARTIAL:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->$VALUES:[Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    .locals 1

    .line 18
    const-class v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/firewall/FirewallResponse$Result;
    .locals 1

    .line 18
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->$VALUES:[Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v0}, [Lcom/sec/enterprise/firewall/FirewallResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    return-object v0
.end method
