.class public final enum Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;
.super Ljava/lang/Enum;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/exception/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

.field public static final enum FULL:Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

.field public static final enum SIMPLE:Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    const/4 v1, 0x0

    const-string v2, "FULL"

    invoke-direct {v0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;->FULL:Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    .line 10
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    const/4 v2, 0x1

    const-string v3, "SIMPLE"

    invoke-direct {v0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;->SIMPLE:Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    .line 8
    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;->FULL:Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    aput-object v3, v0, v1

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;->SIMPLE:Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;->$VALUES:[Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;
    .locals 1

    .line 8
    const-class v0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;
    .locals 1

    .line 8
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;->$VALUES:[Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    invoke-virtual {v0}, [Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/diagmonagent/log/provider/exception/Parser$Type;

    return-object v0
.end method
