.class public final Lcom/airbnb/lottie/LottieResult;
.super Ljava/lang/Object;
.source "LottieResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 22
    .local p0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 36
    .local p0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 37
    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lcom/airbnb/lottie/LottieResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 40
    return v2

    .line 42
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/airbnb/lottie/LottieResult;

    .line 43
    .local v1, "that":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<*>;"
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    return v0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 49
    :cond_3
    return v2
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 32
    .local p0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 53
    .local p0, "this":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
