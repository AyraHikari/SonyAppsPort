.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherProvider$SqlArguments;,
        Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.launcher.settings"

.field private static final DOWNGRADE_SCHEMA_FILE:Ljava/lang/String; = "downgrade_schema.json"

.field static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field public static final KEY_LAYOUT_PROVIDER_AUTHORITY:Ljava/lang/String; = "KEY_LAYOUT_PROVIDER_AUTHORITY"

.field private static final LOGD:Z = false

.field private static final RESTORE_BACKUP_TABLE_DELAY:J

.field public static final SCHEMA_VERSION:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"

.field private static final TEST_WORKSPACE_LAYOUT_RES_XML:I


# instance fields
.field private mLastRestoreTimestamp:J

.field protected mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

.field protected mProviderAuthority:Ljava/lang/String;

.field private mUseTestWorkspaceLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher3/LauncherProvider;->RESTORE_BACKUP_TABLE_DELAY:J

    .line 109
    sget v0, Lcom/android/launcher3/R$xml;->default_test_workspace:I

    sput v0, Lcom/android/launcher3/LauncherProvider;->TEST_WORKSPACE_LAYOUT_RES_XML:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider;->mLastRestoreTimestamp:J

    return-void
.end method

.method static addModifiedTime(Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    return-void
.end method

.method private clearFlagEmptyDbCreated()V
    .locals 3

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 523
    const-string v2, "EMPTY_DATABASE_CREATED"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    return-void
.end method

.method private createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 19
    .param p1, "widgetHost"    # Landroid/appwidget/AppWidgetHost;

    .line 584
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 586
    .local v9, "ctx":Landroid/content/Context;
    iget-object v0, v1, Lcom/android/launcher3/LauncherProvider;->mProviderAuthority:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, v1, Lcom/android/launcher3/LauncherProvider;->mProviderAuthority:Ljava/lang/String;

    move-object v10, v0

    .local v0, "authority":Ljava/lang/String;
    goto :goto_0

    .line 589
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "launcher3.layout.provider"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 592
    .local v10, "authority":Ljava/lang/String;
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 593
    return-object v11

    .line 596
    :cond_1
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    .line 597
    .local v12, "pi":Landroid/content/pm/ProviderInfo;
    const-string v13, "LauncherProvider"

    if-nez v12, :cond_2

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No provider found for authority "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-object v11

    .line 601
    :cond_2
    invoke-static {v10, v9}, Lcom/android/launcher3/LauncherProvider;->getLayoutUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    .line 602
    .local v14, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 604
    .local v15, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-static {v15}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 605
    .local v0, "layout":Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    move-object v8, v2

    .line 606
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading layout from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v16, Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v5, v1, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 610
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;

    invoke-direct {v7, v8}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda0;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v17, "workspace"

    move-object/from16 v2, v16

    move-object v3, v9

    move-object/from16 v4, p1

    move-object/from16 v18, v8

    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;Ljava/util/function/Supplier;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    if-eqz v15, :cond_3

    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 609
    :cond_3
    return-object v16

    .line 602
    .end local v0    # "layout":Ljava/lang/String;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v15, :cond_4

    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v9    # "ctx":Landroid/content/Context;
    .end local v10    # "authority":Ljava/lang/String;
    .end local v12    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v14    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider;
    .end local p1    # "widgetHost":Landroid/appwidget/AppWidgetHost;
    :cond_4
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 612
    .end local v15    # "in":Ljava/io/InputStream;
    .restart local v9    # "ctx":Landroid/content/Context;
    .restart local v10    # "authority":Ljava/lang/String;
    .restart local v12    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v14    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider;
    .restart local p1    # "widgetHost":Landroid/appwidget/AppWidgetHost;
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting layout stream from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    return-object v11
.end method

.method static dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .param p0, "helper"    # Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "nullColumnHack"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .line 202
    if-eqz p4, :cond_1

    .line 205
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0, p4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->checkId(Landroid/content/ContentValues;)V

    .line 209
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to insert null values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deleteEmptyFolders()Lcom/android/launcher3/util/IntArray;
    .locals 9

    .line 494
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 495
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    .line 497
    .local v8, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_1
    const-string v5, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    .line 503
    .local v5, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v3, "favorites"

    const-string v4, "_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    .line 505
    .local v1, "folderIds":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    const-string v2, "favorites"

    const-string v3, "_id"

    invoke-static {v3, v1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    :cond_0
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    nop

    .line 511
    :try_start_2
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 510
    return-object v1

    .line 495
    .end local v1    # "folderIds":Lcom/android/launcher3/util/IntArray;
    .end local v5    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v8}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider;
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 511
    .end local v8    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/android/launcher3/LauncherProvider;
    :catch_0
    move-exception v1

    .line 512
    .local v1, "ex":Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherProvider"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    return-object v2
.end method

.method private getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;
    .locals 9
    .param p1, "widgetHost"    # Landroid/appwidget/AppWidgetHost;

    .line 629
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 630
    .local v0, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherProvider;->mUseTestWorkspaceLayout:Z

    if-eqz v1, :cond_0

    .line 631
    sget v1, Lcom/android/launcher3/LauncherProvider;->TEST_WORKSPACE_LAYOUT_RES_XML:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 633
    .local v1, "defaultLayout":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    if-eqz v2, :cond_1

    .line 635
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    .line 638
    :cond_1
    new-instance v8, Lcom/android/launcher3/XperiaCustomizationLoader;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 639
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, v8

    move-object v4, p1

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/XperiaCustomizationLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 638
    return-object v8
.end method

.method public static getLayoutUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 619
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 620
    .local v0, "grid":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "launcher_layout"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 621
    const-string v2, "version"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 622
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gridWidth"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 623
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gridHeight"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    .line 624
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hotseatSize"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 625
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 620
    return-object v1
.end method

.method static varargs getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 1089
    const/4 v0, 0x0

    .line 1090
    .local v0, "max":I
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1091
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .local v1, "prog":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v2

    .line 1093
    if-ltz v0, :cond_1

    .line 1096
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1103
    .end local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    goto :goto_1

    .line 1094
    .restart local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: could not query max id"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "max":I
    .end local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1090
    .restart local v0    # "max":I
    .restart local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "max":I
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :cond_2
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1096
    .end local v1    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "max":I
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1097
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, "message":Ljava/lang/String;
    const-string v3, "re-open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "already-closed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1104
    .end local v1    # "exception":Ljava/lang/IllegalArgumentException;
    .end local v2    # "message":Ljava/lang/String;
    :goto_1
    return v0

    .line 1101
    .restart local v1    # "exception":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_3
    throw v1
.end method

.method private initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()I

    move-result v0

    .line 247
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "itemType"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 252
    .local v1, "itemType":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 254
    const-string v2, "appWidgetId"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 257
    .local v3, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    nop

    .line 258
    const-string v4, "appWidgetProvider"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 260
    .local v4, "cn":Landroid/content/ComponentName;
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 262
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v6

    .line 263
    .local v6, "widgetHost":Landroid/appwidget/AppWidgetHost;
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    .line 264
    .local v7, "appWidgetId":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    invoke-virtual {v3, v7, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return v5

    .line 272
    .end local v6    # "widgetHost":Landroid/appwidget/AppWidgetHost;
    .end local v7    # "appWidgetId":I
    :cond_0
    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v6, "LauncherProvider"

    const-string v7, "Failed to initialize external widget"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    return v5

    .line 274
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return v5

    .line 278
    .end local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v4    # "cn":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic lambda$createWorkspaceLoaderFromAppRestriction$4(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 611
    return-object p0
.end method

.method private declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 14

    monitor-enter p0

    .line 534
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 536
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    const-string v2, "EMPTY_DATABASE_CREATED"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 537
    const-string v1, "LauncherProvider"

    const-string v3, "loading default workspace"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->newLauncherWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    .line 540
    .local v1, "widgetHost":Landroid/appwidget/AppWidgetHost;
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->createWorkspaceLoaderFromAppRestriction(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v3

    move-object v9, v3

    .line 545
    .local v9, "loader":Lcom/android/launcher3/AutoInstallsLayout;
    if-nez v9, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v3

    move-object v10, v3

    .line 547
    .local v10, "partner":Lcom/android/launcher3/Partner;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/launcher3/Partner;->hasDefaultLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    invoke-virtual {v10}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v11, v3

    .line 549
    .local v11, "partnerRes":Landroid/content/res/Resources;
    const-string v3, "partner_default_layout"

    const-string v4, "xml"

    .line 550
    invoke-virtual {v10}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 549
    invoke-virtual {v11, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v12, v3

    .line 551
    .local v12, "workspaceResId":I
    if-eqz v12, :cond_0

    .line 552
    new-instance v13, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-object v3, v13

    move-object v5, v1

    move-object v7, v11

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    move-object v9, v13

    .line 558
    .end local v10    # "partner":Lcom/android/launcher3/Partner;
    .end local v11    # "partnerRes":Landroid/content/res/Resources;
    .end local v12    # "workspaceResId":I
    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider;
    :cond_0
    if-eqz v9, :cond_1

    const/4 v2, 0x1

    .line 559
    .local v2, "usingExternallyProvidedLayout":Z
    :cond_1
    if-nez v9, :cond_2

    .line 560
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v3

    move-object v9, v3

    .line 565
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 567
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v3

    if-gtz v3, :cond_3

    if-eqz v2, :cond_3

    .line 570
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 571
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 572
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser(Landroid/appwidget/AppWidgetHost;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v5

    .line 571
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    .line 574
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    .end local v1    # "widgetHost":Landroid/appwidget/AppWidgetHost;
    .end local v2    # "usingExternallyProvidedLayout":Z
    .end local v9    # "loader":Lcom/android/launcher3/AutoInstallsLayout;
    :cond_4
    monitor-exit p0

    return-void

    .line 533
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 486
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 487
    return-void
.end method

.method private declared-synchronized prepForMigration(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Z
    .locals 5
    .param p1, "dbFile"    # Ljava/lang/String;
    .param p2, "targetTableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/LauncherProvider$DatabaseHelper;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/LauncherProvider$DatabaseHelper;",
            ">;)Z"
        }
    .end annotation

    .local p3, "src":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/LauncherProvider$DatabaseHelper;>;"
    .local p4, "dst":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/LauncherProvider$DatabaseHelper;>;"
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "b/198965093"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepForMigration - target db is same as current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 173
    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider;
    :cond_0
    :try_start_1
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 174
    .local v0, "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 175
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "favorites"

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 176
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 175
    invoke-static {v1, v2, v3, p2, v4}, Lcom/android/launcher3/provider/LauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 167
    .end local v0    # "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local p1    # "dbFile":Ljava/lang/String;
    .end local p2    # "targetTableName":Ljava/lang/String;
    .end local p3    # "src":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/LauncherProvider$DatabaseHelper;>;"
    .end local p4    # "dst":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/LauncherProvider$DatabaseHelper;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reloadLauncherIfExternal()V
    .locals 2

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 214
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 215
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 219
    .end local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 307
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 308
    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 309
    .local v0, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    const/4 v1, 0x0

    .line 311
    .local v1, "isAddOrDelete":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 312
    .local v2, "numOperations":I
    new-array v3, v2, [Landroid/content/ContentProviderResult;

    .line 313
    .local v3, "results":[Landroid/content/ContentProviderResult;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 314
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 315
    .local v5, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v5, p0, v3, v4}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v6

    aput-object v6, v3, v4

    .line 317
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isDelete()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    aget-object v6, v3, v4

    iget-object v6, v6, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    aget-object v6, v3, v4

    iget-object v6, v6, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    .line 318
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v1, v6

    .line 313
    .end local v5    # "op":Landroid/content/ContentProviderOperation;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    .end local v4    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 321
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherProvider;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 324
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V

    .line 325
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    nop

    .line 327
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 326
    return-object v3

    .line 308
    .end local v1    # "isAddOrDelete":Z
    .end local v2    # "numOperations":I
    .end local v3    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 284
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 286
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 287
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v2, v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 288
    .local v2, "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :try_start_0
    array-length v3, p2

    .line 289
    .local v3, "numValues":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 290
    aget-object v5, p2, v4

    invoke-static {v5}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 291
    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, p2, v4

    invoke-static {v5, v1, v6, v7, v8}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_0

    .line 292
    const/4 v5, 0x0

    .line 297
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 292
    return v5

    .line 289
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    .end local v4    # "i":I
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 296
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v3    # "numValues":I
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    .line 299
    .end local v2    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 300
    array-length v2, p2

    return v2

    .line 287
    .restart local v2    # "t":Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 364
    return-object v2

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 368
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "create_empty_db"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "new_db_transaction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "refresh_backup_table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "set_use_test_workspace_layout_flag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "clear_use_test_workspace_layout_flag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "update_current_open_helper"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "get_empty_db_flag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "load_default_favorites"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_8
    const-string v1, "restore_hotseat_table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_9
    const-string v1, "switch_database"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :sswitch_a
    const-string v1, "clear_empty_db_flag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_b
    const-string v1, "prep_for_preview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_c
    const-string v1, "generate_new_screen_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_d
    const-string v1, "generate_new_item_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_e
    const-string v1, "restore_backup_table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :sswitch_f
    const-string v1, "remove_ghost_widgets"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_10
    const-string v1, "delete_empty_folders"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :goto_0
    const-string v1, "value"

    packed-switch v0, :pswitch_data_0

    .line 482
    return-object v2

    .line 466
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 468
    .local v0, "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    if-eqz p3, :cond_4

    const-string v1, "KEY_LAYOUT_PROVIDER_AUTHORITY"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 471
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mProviderAuthority:Ljava/lang/String;

    goto :goto_2

    .line 469
    :cond_4
    :goto_1
    iput-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mProviderAuthority:Ljava/lang/String;

    .line 473
    :goto_2
    nop

    .line 474
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 473
    invoke-static {v1, p2, v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createDatabaseHelper(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 475
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->close()V

    .line 476
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 477
    .local v1, "app":Lcom/android/launcher3/LauncherAppState;
    if-nez v1, :cond_5

    return-object v2

    .line 478
    :cond_5
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 479
    return-object v2

    .line 455
    .end local v0    # "helper":Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .end local v1    # "app":Lcom/android/launcher3/LauncherAppState;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v0, "result":Landroid/os/Bundle;
    new-instance v2, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/LauncherProvider;)V

    .line 457
    const-string v4, "favorites_preview"

    invoke-direct {p0, p2, v4, v2, v3}, Lcom/android/launcher3/LauncherProvider;->prepForMigration(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Z

    move-result v2

    .line 456
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    return-object v0

    .line 444
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 445
    .restart local v0    # "result":Landroid/os/Bundle;
    new-instance v2, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/LauncherProvider;)V

    new-instance v3, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/LauncherProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/LauncherProvider;)V

    .line 446
    const-string v4, "favorites_tmp"

    invoke-direct {p0, p2, v4, v2, v3}, Lcom/android/launcher3/LauncherProvider;->prepForMigration(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Z

    move-result v2

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    return-object v0

    .line 435
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 436
    .local v0, "ts":J
    iget-wide v3, p0, Lcom/android/launcher3/LauncherProvider;->mLastRestoreTimestamp:J

    sub-long v3, v0, v3

    sget-wide v5, Lcom/android/launcher3/LauncherProvider;->RESTORE_BACKUP_TABLE_DELAY:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 437
    iput-wide v0, p0, Lcom/android/launcher3/LauncherProvider;->mLastRestoreTimestamp:J

    .line 438
    nop

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    new-instance v5, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreIfPossible(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/app/backup/BackupManager;)Z

    .line 441
    :cond_6
    return-object v2

    .line 430
    .end local v0    # "ts":J
    :pswitch_4
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 431
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 430
    const-string v3, "hotseat_restore_backup"

    invoke-static {v1, v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->-$$Nest$fputmHotseatRestoreTableExists(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Z)V

    .line 432
    return-object v2

    .line 425
    :pswitch_5
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "favorites_bakup"

    invoke-static {v1, v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->-$$Nest$fputmBackupTableExists(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Z)V

    .line 427
    return-object v2

    .line 419
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "result":Landroid/os/Bundle;
    new-instance v2, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 421
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 422
    return-object v0

    .line 415
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_7
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 416
    return-object v2

    .line 411
    :pswitch_8
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->loadDefaultFavoritesIfNecessary()V

    .line 412
    return-object v2

    .line 407
    :pswitch_9
    iput-boolean v4, p0, Lcom/android/launcher3/LauncherProvider;->mUseTestWorkspaceLayout:Z

    .line 408
    return-object v2

    .line 403
    :pswitch_a
    iput-boolean v3, p0, Lcom/android/launcher3/LauncherProvider;->mUseTestWorkspaceLayout:Z

    .line 404
    return-object v2

    .line 399
    :pswitch_b
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 400
    return-object v2

    .line 393
    :pswitch_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .restart local v0    # "result":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 395
    invoke-static {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->-$$Nest$mgetNewScreenId(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)I

    move-result v2

    .line 394
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    return-object v0

    .line 387
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 388
    .restart local v0    # "result":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 389
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()I

    move-result v2

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    return-object v0

    .line 381
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .restart local v0    # "result":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->deleteEmptyFolders()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v2

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 384
    return-object v0

    .line 374
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .restart local v0    # "result":Landroid/os/Bundle;
    nop

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 377
    const-string v5, "EMPTY_DATABASE_CREATED"

    invoke-virtual {v3, v5}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    return-object v0

    .line 370
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_10
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 371
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x772f6ec1 -> :sswitch_10
        -0x5d566b7c -> :sswitch_f
        -0x552616de -> :sswitch_e
        -0x4200a9a2 -> :sswitch_d
        -0x3d63635b -> :sswitch_c
        -0x3cb09cc0 -> :sswitch_b
        -0x3c1ca8d7 -> :sswitch_a
        -0x11c499da -> :sswitch_9
        0x12478130 -> :sswitch_8
        0x1c6a9ec0 -> :sswitch_7
        0x28c62c72 -> :sswitch_6
        0x33e45507 -> :sswitch_5
        0x345e6cb4 -> :sswitch_4
        0x3bf6e3ff -> :sswitch_3
        0x3ddfcdf5 -> :sswitch_2
        0x6046c11c -> :sswitch_1
        0x7e36b893 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized createDbIfNotExists()V
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 159
    nop

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createDatabaseHelper(Landroid/content/Context;Z)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreIfNeeded(Landroid/content/Context;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local p0    # "this":Lcom/android/launcher3/LauncherProvider;
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 333
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 337
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    .line 338
    const-string v3, "favorites"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 341
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 342
    .local v2, "count":I
    if-lez v2, :cond_1

    .line 343
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 346
    :cond_1
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 126
    .local v0, "appState":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 130
    return-void

    .line 127
    :cond_1
    :goto_0
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 146
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 224
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 227
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 228
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherProvider;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    return-object v3

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 234
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 235
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v2, v1, v4, v3, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 236
    .local v2, "rowId":I
    if-gez v2, :cond_1

    return-object v3

    .line 237
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherProvider;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    int-to-long v3, v2

    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 240
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 241
    return-object p1
.end method

.method synthetic lambda$call$0$com-android-launcher3-LauncherProvider()Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    return-object v0
.end method

.method synthetic lambda$call$1$com-android-launcher3-LauncherProvider()Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .locals 2

    .line 450
    nop

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 450
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createDatabaseHelper(Landroid/content/Context;Z)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$call$2$com-android-launcher3-LauncherProvider(Ljava/lang/String;)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .line 460
    nop

    .line 461
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 460
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createDatabaseHelper(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$call$3$com-android-launcher3-LauncherProvider()Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/MainProcessInitializer;->initialize(Landroid/content/Context;)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 184
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 186
    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v2, v1, v3, v4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    .local v2, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 188
    .local v5, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v6, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 190
    iget-object v6, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 191
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v9, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v5

    move-object v7, v14

    move-object/from16 v8, p2

    move-object/from16 v13, p5

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    .local v6, "result":Landroid/database/Cursor;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v7, "extra":Landroid/os/Bundle;
    iget-object v8, v0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "db_name"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {v6, v7}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-interface {v6, v8, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 197
    return-object v6
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createDbIfNotExists()V

    .line 352
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 354
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 355
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 356
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 357
    .local v2, "count":I
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 358
    return v2
.end method
