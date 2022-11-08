.class public Lcom/android/launcher3/icons/LauncherIconProvider;
.super Lcom/android/launcher3/icons/IconProvider;
.source "LauncherIconProvider.java"


# static fields
.field private static final ATTR_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final DISABLED_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/icons/IconProvider$ThemeData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LIconProvider"

.field private static final TAG_ICON:Ljava/lang/String; = "icon"


# instance fields
.field private mSupportsIconTheme:Z

.field private mThemedIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/icons/IconProvider$ThemeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/LauncherIconProvider;->DISABLED_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/icons/LauncherIconProvider;->setIconThemeSupported(Z)V

    .line 52
    return-void
.end method

.method private getThemedIconMap()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/icons/IconProvider$ThemeData;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mThemedIconMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 75
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 78
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider$ThemeData;>;"
    iget-object v1, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    sget v2, Lcom/android/launcher3/R$xml;->grayscale_icon_map:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 82
    .local v3, "depth":I
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    if-eq v5, v6, :cond_1

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    .line 86
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_5

    :cond_2
    if-eq v5, v6, :cond_5

    .line 87
    if-eq v5, v7, :cond_3

    .line 88
    goto :goto_1

    .line 90
    :cond_3
    const-string v4, "icon"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    const-string v4, "package"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "pkg":Ljava/lang/String;
    const-string v9, "drawable"

    const/4 v10, 0x0

    invoke-interface {v2, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 93
    .local v8, "iconId":I
    if-eqz v8, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 94
    new-instance v9, Lcom/android/launcher3/icons/IconProvider$ThemeData;

    invoke-direct {v9, v1, v8}, Lcom/android/launcher3/icons/IconProvider$ThemeData;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v8    # "iconId":I
    :cond_4
    goto :goto_1

    .line 98
    .end local v3    # "depth":I
    .end local v5    # "type":I
    :cond_5
    if-eqz v2, :cond_6

    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_6
    goto :goto_3

    .line 79
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_7

    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider$ThemeData;>;"
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local p0    # "this":Lcom/android/launcher3/icons/LauncherIconProvider;
    :cond_7
    :goto_2
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider$ThemeData;>;"
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local p0    # "this":Lcom/android/launcher3/icons/LauncherIconProvider;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LIconProvider"

    const-string v4, "Unable to parse icon map"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    iput-object v0, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mThemedIconMap:Ljava/util/Map;

    .line 102
    return-object v0
.end method


# virtual methods
.method public getSystemIconState()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mSupportsIconTheme:Z

    if-eqz v1, :cond_0

    const-string v1, ",with-theme"

    goto :goto_0

    :cond_0
    const-string v1, ",no-theme"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getThemeDataForPackage(Ljava/lang/String;)Lcom/android/launcher3/icons/IconProvider$ThemeData;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/android/launcher3/icons/LauncherIconProvider;->getThemedIconMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/IconProvider$ThemeData;

    return-object v0
.end method

.method public setIconThemeSupported(Z)V
    .locals 1
    .param p1, "isSupported"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mSupportsIconTheme:Z

    .line 59
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->USE_LOCAL_ICON_OVERRIDES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/icons/LauncherIconProvider;->DISABLED_MAP:Ljava/util/Map;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/icons/LauncherIconProvider;->mThemedIconMap:Ljava/util/Map;

    .line 61
    return-void
.end method
