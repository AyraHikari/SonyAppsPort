.class public Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;
.super Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/DefaultLayoutParser;

    .line 318
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method protected verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I
    .locals 9
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 323
    const-string v0, "appWidgetId"

    const-string v1, "DefaultLayoutParser"

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    goto :goto_0

    .line 324
    :catch_0
    move-exception v4

    .line 325
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 325
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "packages":[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    aget-object v7, v5, v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v6

    .line 329
    :try_start_1
    iget-object v6, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v6, v6, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 333
    nop

    .line 336
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "packages":[Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 337
    .local v3, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v4, -0x1

    .line 339
    .local v4, "insertedId":I
    :try_start_2
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    .line 341
    .local v5, "appWidgetId":I
    invoke-virtual {v3, v5, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to bind app widget id "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 344
    return v2

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v6, "appWidgetProvider"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v6, "_id"

    iget-object v7, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v7, v7, Lcom/android/launcher3/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v7}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v6, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v6, v6, Lcom/android/launcher3/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v7, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v7, v7, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-interface {v2, v6, v7}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v2

    move v4, v2

    .line 351
    if-gez v4, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 353
    return v4

    .line 357
    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 358
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 360
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 361
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 366
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "appWidgetId":I
    :cond_2
    goto :goto_1

    .line 364
    :catch_1
    move-exception v0

    .line 365
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "Problem allocating appWidgetId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    return v4

    .line 330
    .end local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .local v4, "e":Ljava/lang/Exception;
    .local v5, "packages":[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 331
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find widget provider: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v2
.end method
