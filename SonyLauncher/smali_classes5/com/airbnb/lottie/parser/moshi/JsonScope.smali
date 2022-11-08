.class final Lcom/airbnb/lottie/parser/moshi/JsonScope;
.super Ljava/lang/Object;
.source "JsonScope.java"


# static fields
.field static final CLOSED:I = 0x8

.field static final DANGLING_NAME:I = 0x4

.field static final EMPTY_ARRAY:I = 0x1

.field static final EMPTY_DOCUMENT:I = 0x6

.field static final EMPTY_OBJECT:I = 0x3

.field static final NONEMPTY_ARRAY:I = 0x2

.field static final NONEMPTY_DOCUMENT:I = 0x7

.field static final NONEMPTY_OBJECT:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .param p0, "stackSize"    # I
    .param p1, "stack"    # [I
    .param p2, "pathNames"    # [Ljava/lang/String;
    .param p3, "pathIndices"    # [I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 58
    aget v2, p1, v1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 67
    :pswitch_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 69
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 61
    :pswitch_1
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    nop

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
