.class public Lcom/android/quickstep/LauncherSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "LauncherSearchIndexablesProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 71
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v1

    if-nez v1, :cond_5

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$xml;->indexable_launcher_prefs:I

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 76
    .local v2, "depth":I
    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10101e8

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 78
    .local v4, "attrs":[I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v7, v5

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    .line 79
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_2

    :cond_1
    if-eq v7, v3, :cond_2

    .line 80
    const/4 v5, 0x2

    if-ne v7, v5, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 82
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 81
    invoke-virtual {v5, v8, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 83
    .local v5, "a":Landroid/content/res/TypedArray;
    new-array v8, v3, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v5    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 87
    .end local v2    # "depth":I
    .end local v4    # "attrs":[I
    .end local v7    # "type":I
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_3
    goto :goto_2

    .line 73
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .end local p0    # "this":Lcom/android/quickstep/LauncherSearchIndexablesProvider;
    .end local p1    # "projection":[Ljava/lang/String;
    :cond_4
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    .restart local p0    # "this":Lcom/android/quickstep/LauncherSearchIndexablesProvider;
    .restart local p1    # "projection":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 52
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 52
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 55
    .local v1, "settingsActivity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    sget v4, Lcom/android/launcher3/R$xml;->indexable_launcher_prefs:I

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "xmlResId"

    invoke-virtual {v2, v5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 57
    const-string v4, "intentAction"

    invoke-virtual {v2, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 58
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intentTargetPackage"

    invoke-virtual {v2, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 59
    const-string v4, "intentTargetClass"

    invoke-virtual {v2, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 60
    return-object v0
.end method
