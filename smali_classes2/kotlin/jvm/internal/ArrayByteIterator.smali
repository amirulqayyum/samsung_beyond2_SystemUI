.class final Lkotlin/jvm/internal/ArrayByteIterator;
.super Lkotlin/collections/ByteIterator;
.source "ArrayIterators.kt"


# instance fields
.field private final array:[B

.field private index:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lkotlin/collections/ByteIterator;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/ArrayByteIterator;->array:[B

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 12
    iget v0, p0, Lkotlin/jvm/internal/ArrayByteIterator;->index:I

    iget-object p0, p0, Lkotlin/jvm/internal/ArrayByteIterator;->array:[B

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextByte()B
    .locals 3

    .line 13
    :try_start_0
    iget-object v0, p0, Lkotlin/jvm/internal/ArrayByteIterator;->array:[B

    iget v1, p0, Lkotlin/jvm/internal/ArrayByteIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/jvm/internal/ArrayByteIterator;->index:I

    aget-byte p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    iget v1, p0, Lkotlin/jvm/internal/ArrayByteIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/jvm/internal/ArrayByteIterator;->index:I

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
