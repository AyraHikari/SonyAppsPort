.class public Lcom/airbnb/lottie/manager/FontAssetManager;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/airbnb/lottie/FontAssetDelegate;

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/airbnb/lottie/model/MutablePair<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/airbnb/lottie/model/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/MutablePair<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p2, "delegate"    # Lcom/airbnb/lottie/FontAssetDelegate;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    .line 27
    const-string v0, ".ttf"

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 31
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 34
    return-void

    .line 37
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 69
    .local v0, "defaultTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 70
    return-object v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 74
    .local v1, "typeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 79
    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 81
    iget-object v3, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 85
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 90
    .end local v2    # "path":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object v1
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "styleInt":I
    const-string v1, "Italic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 97
    .local v1, "containsItalic":Z
    const-string v2, "Bold"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 98
    .local v2, "containsBold":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 99
    const/4 v0, 0x3

    goto :goto_0

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    .line 101
    const/4 v0, 0x2

    goto :goto_0

    .line 102
    :cond_1
    if-eqz v2, :cond_2

    .line 103
    const/4 v0, 0x1

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 107
    return-object p1

    .line 110
    :cond_3
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/model/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 58
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 59
    return-object v0

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 62
    .local v1, "typefaceWithDefaultStyle":Landroid/graphics/Typeface;
    invoke-direct {p0, v1, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Lcom/airbnb/lottie/model/MutablePair;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object v0
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultFontFileExtension"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 0
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/FontAssetDelegate;

    .line 41
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 42
    return-void
.end method
