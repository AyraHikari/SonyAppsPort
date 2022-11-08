.class Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
.super Ljava/lang/Object;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorFilterData"
.end annotation


# instance fields
.field final colorFilter:Landroid/graphics/ColorFilter;

.field final contentName:Ljava/lang/String;

.field final layerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "contentName"    # Ljava/lang/String;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1230
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    .line 1231
    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    .line 1232
    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1233
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1250
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1251
    return v0

    .line 1254
    :cond_0
    instance-of v1, p1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1255
    return v2

    .line 1258
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 1260
    .local v1, "other":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    iget-object v4, v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1237
    const/16 v0, 0x11

    .line 1238
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1239
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int v0, v2, v1

    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1243
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int v0, v2, v1

    .line 1245
    :cond_1
    return v0
.end method
