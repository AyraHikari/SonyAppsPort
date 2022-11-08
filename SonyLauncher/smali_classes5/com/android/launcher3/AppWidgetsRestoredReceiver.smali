.class public Lcom/android/launcher3/AppWidgetsRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetsRestoredReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AWRestoredReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static restoreAppWidgetIds(Landroid/content/Context;[I[I)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldWidgetIds"    # [I
    .param p2, "newWidgetIds"    # [I

    .line 54
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 60
    .local v4, "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x0

    const-string v6, "AWRestoredReceiver"

    if-nez v0, :cond_1

    .line 63
    const-string v0, "Skipping widget ID remap as DB already in use"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    array-length v0, v3

    :goto_0
    if-ge v5, v0, :cond_0

    aget v7, v3, v5

    .line 65
    .local v7, "widgetId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting widgetId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v4, v7}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 64
    .end local v7    # "widgetId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void

    .line 70
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 71
    .local v13, "cr":Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 73
    .local v14, "widgets":Landroid/appwidget/AppWidgetManager;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_1
    array-length v0, v2

    if-ge v15, v0, :cond_5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Widget state restore id "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v7, v2, v15

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " => "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v7, v3, v15

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    aget v0, v3, v15

    invoke-virtual {v14, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    .line 78
    .local v16, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x4

    move/from16 v17, v0

    .local v0, "state":I
    goto :goto_2

    .line 82
    .end local v0    # "state":I
    :cond_2
    const/4 v0, 0x2

    move/from16 v17, v0

    .line 87
    .local v17, "state":I
    :goto_2
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    .line 88
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v18

    .line 89
    .local v18, "mainProfileId":J
    aget v0, v2, v15

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 90
    .local v20, "oldWidgetId":Ljava/lang/String;
    const-string v21, "appWidgetId=? and (restored & 1) = 1 and profileId=?"

    .line 91
    .local v21, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v20, v0, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    move-object v12, v0

    .line 92
    .local v12, "args":[Ljava/lang/String;
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    new-instance v7, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    const-string v9, "appWidgetId=? and (restored & 1) = 1 and profileId=?"

    invoke-direct {v7, v9, v12}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    aget v7, v3, v15

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "appWidgetId"

    invoke-virtual {v0, v11, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 94
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "restored"

    invoke-virtual {v0, v10, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    move-result v22

    .line 96
    .local v22, "result":I
    if-nez v22, :cond_4

    .line 97
    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/String;

    aput-object v20, v8, v5

    const/16 v23, 0x0

    const-string v24, "appWidgetId=?"

    move-object v7, v13

    move-object/from16 v25, v8

    move-object v8, v0

    move-object v0, v10

    move-object/from16 v10, v24

    move-object v5, v11

    move-object/from16 v11, v25

    move-object v2, v12

    .end local v12    # "args":[Ljava/lang/String;
    .local v2, "args":[Ljava/lang/String;
    move-object/from16 v12, v23

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_3

    .line 103
    aget v8, v3, v15

    invoke-virtual {v4, v8}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    goto :goto_3

    .line 106
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    throw v0

    .line 96
    .end local v2    # "args":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "args":[Ljava/lang/String;
    :cond_4
    move-object v0, v10

    move-object v5, v11

    move-object v2, v12

    .line 110
    .end local v12    # "args":[Ljava/lang/String;
    .restart local v2    # "args":[Ljava/lang/String;
    :goto_3
    new-instance v7, Lcom/android/launcher3/util/ContentWriter;

    const-string v8, "appWidgetId=? and profileId=?"

    invoke-static {v8, v2}, Lcom/android/launcher3/util/ContentWriter$CommitParams;->backupCommitParams(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter$CommitParams;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    aget v8, v3, v15

    .line 112
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    .line 113
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 73
    .end local v2    # "args":[Ljava/lang/String;
    .end local v16    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v17    # "state":I
    .end local v18    # "mainProfileId":J
    .end local v20    # "oldWidgetId":Ljava/lang/String;
    .end local v21    # "where":Ljava/lang/String;
    .end local v22    # "result":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 117
    .end local v15    # "i":I
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 118
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 121
    :cond_6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    const/4 v0, 0x0

    const-string v1, "hostId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "hostId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Widget ID map received for host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AWRestoredReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 36
    return-void

    .line 39
    :cond_0
    const-string v1, "appWidgetOldIds"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 40
    .local v1, "oldIds":[I
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 41
    .local v3, "newIds":[I
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v4, v1

    array-length v5, v3

    if-ne v4, v5, :cond_1

    .line 42
    invoke-static {p1, v1, v3}, Lcom/android/launcher3/provider/RestoreDbTask;->setRestoredAppWidgetIds(Landroid/content/Context;[I[I)V

    goto :goto_0

    .line 44
    :cond_1
    const-string v4, "Invalid host restored received"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0    # "hostId":I
    .end local v1    # "oldIds":[I
    .end local v3    # "newIds":[I
    :cond_2
    :goto_0
    return-void
.end method
