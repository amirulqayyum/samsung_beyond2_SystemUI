.class public final enum Lcom/sec/enterprise/firewall/FirewallRule$Status;
.super Ljava/lang/Enum;
.source "FirewallRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/firewall/FirewallRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/enterprise/firewall/FirewallRule$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/enterprise/firewall/FirewallRule$Status;

.field public static final enum DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

.field public static final enum ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

.field public static final enum PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    invoke-direct {v0, v2, v1}, Lcom/sec/enterprise/firewall/FirewallRule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    .line 38
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;

    const/4 v2, 0x1

    const-string v3, "ENABLED"

    invoke-direct {v0, v3, v2}, Lcom/sec/enterprise/firewall/FirewallRule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    .line 39
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;

    const/4 v3, 0x2

    const-string v4, "PENDING"

    invoke-direct {v0, v4, v3}, Lcom/sec/enterprise/firewall/FirewallRule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallRule$Status;

    .line 36
    sget-object v4, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    aput-object v4, v0, v1

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->$VALUES:[Lcom/sec/enterprise/firewall/FirewallRule$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;
    .locals 1

    .line 36
    const-class v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/enterprise/firewall/FirewallRule$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/enterprise/firewall/FirewallRule$Status;
    .locals 1

    .line 36
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->$VALUES:[Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v0}, [Lcom/sec/enterprise/firewall/FirewallRule$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/enterprise/firewall/FirewallRule$Status;

    return-object v0
.end method
