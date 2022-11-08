.class public final Lcom/android/launcher3/widget/WidgetSections;
.super Ljava/lang/Object;
.source "WidgetSections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    }
.end annotation


# static fields
.field public static final NO_CATEGORY:I = -0x1

.field private static final TAG_SECTION_NAME:Ljava/lang/String; = "section"

.field private static final TAG_WIDGET_NAME:Ljava/lang/String; = "widget"

.field private static sWidgetSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/WidgetSections$WidgetSection;",
            ">;"
        }
    .end annotation
.end field

.field private static sWidgetsToCategories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/util/IntSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getWidgetSections(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/WidgetSections$WidgetSection;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/launcher3/widget/WidgetSections;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/android/launcher3/widget/WidgetSections;->sWidgetSections:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 55
    monitor-exit v0

    return-object v1

    .line 57
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSections;->parseWidgetSectionsXml(Landroid/content/Context;)V

    .line 58
    sget-object v1, Lcom/android/launcher3/widget/WidgetSections;->sWidgetSections:Landroid/util/SparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 53
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getWidgetsToCategory(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/util/IntSet;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/launcher3/widget/WidgetSections;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/launcher3/widget/WidgetSections;->sWidgetsToCategories:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 65
    monitor-exit v0

    return-object v1

    .line 67
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSections;->parseWidgetSectionsXml(Landroid/content/Context;)V

    .line 68
    sget-object v1, Lcom/android/launcher3/widget/WidgetSections;->sWidgetsToCategories:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 63
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized parseWidgetSectionsXml(Landroid/content/Context;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    const-class v2, Lcom/android/launcher3/widget/WidgetSections;

    monitor-enter v2

    .line 72
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    .line 73
    .local v3, "widgetSections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/widget/WidgetSections$WidgetSection;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v4, v0

    .line 74
    .local v4, "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/launcher3/R$xml;->widget_sections:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v0

    .line 75
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 77
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v6, v8, :cond_1

    .line 78
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    if-eq v7, v6, :cond_7

    .line 79
    const/4 v9, 0x2

    if-ne v7, v9, :cond_0

    const-string v10, "section"

    .line 80
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 81
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 82
    .local v10, "sectionAttributes":Landroid/util/AttributeSet;
    new-instance v11, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;

    invoke-direct {v11, v1, v10}, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    .local v11, "section":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 84
    .local v12, "sectionDepth":I
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    move v7, v13

    if-ne v13, v8, :cond_2

    .line 85
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v12, :cond_6

    :cond_2
    if-eq v7, v6, :cond_6

    .line 87
    if-ne v7, v9, :cond_5

    const-string v13, "widget"

    .line 88
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 89
    nop

    .line 90
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    sget-object v14, Lcom/android/launcher3/R$styleable;->WidgetSections:[I

    .line 89
    invoke-virtual {v1, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 91
    .local v13, "a":Landroid/content/res/TypedArray;
    sget v14, Lcom/android/launcher3/R$styleable;->WidgetSections_provider:I

    .line 92
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 91
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    .line 93
    .local v14, "provider":Landroid/content/ComponentName;
    sget v15, Lcom/android/launcher3/R$styleable;->WidgetSections_alsoKeepInApp:I

    const/4 v6, 0x0

    invoke-virtual {v13, v15, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 97
    .local v6, "alsoKeepInApp":Z
    invoke-interface {v4, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 98
    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/util/IntSet;

    .local v15, "categories":Lcom/android/launcher3/util/IntSet;
    goto :goto_2

    .line 100
    .end local v15    # "categories":Lcom/android/launcher3/util/IntSet;
    :cond_3
    new-instance v15, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v15}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 101
    .restart local v15    # "categories":Lcom/android/launcher3/util/IntSet;
    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_2
    if-eqz v6, :cond_4

    .line 104
    const/4 v8, -0x1

    invoke-virtual {v15, v8}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 106
    :cond_4
    iget v8, v11, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mCategory:I

    invoke-virtual {v15, v8}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 84
    .end local v6    # "alsoKeepInApp":Z
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "provider":Landroid/content/ComponentName;
    .end local v15    # "categories":Lcom/android/launcher3/util/IntSet;
    :cond_5
    const/4 v6, 0x1

    const/4 v8, 0x3

    goto :goto_1

    .line 109
    :cond_6
    iget v6, v11, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mCategory:I

    invoke-virtual {v3, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .end local v10    # "sectionAttributes":Landroid/util/AttributeSet;
    .end local v11    # "section":Lcom/android/launcher3/widget/WidgetSections$WidgetSection;
    .end local v12    # "sectionDepth":I
    goto/16 :goto_0

    .line 112
    :cond_7
    sput-object v3, Lcom/android/launcher3/widget/WidgetSections;->sWidgetSections:Landroid/util/SparseArray;

    .line 113
    sput-object v4, Lcom/android/launcher3/widget/WidgetSections;->sWidgetsToCategories:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v0    # "depth":I
    .end local v7    # "type":I
    if-eqz v5, :cond_8

    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_8
    nop

    .line 117
    monitor-exit v2

    return-void

    .line 74
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_9

    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "widgetSections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/widget/WidgetSections$WidgetSection;>;"
    .end local v4    # "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    .end local p0    # "context":Landroid/content/Context;
    :cond_9
    :goto_3
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 114
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "widgetSections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/widget/WidgetSections$WidgetSection;>;"
    .restart local v4    # "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "widgetSections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/widget/WidgetSections$WidgetSection;>;"
    .end local v4    # "widgetsToCategories":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher3/util/IntSet;>;"
    .end local p0    # "context":Landroid/content/Context;
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
.end method
