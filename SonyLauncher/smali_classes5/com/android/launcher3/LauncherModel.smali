.class public Lcom/android/launcher3/LauncherModel;
.super Landroid/content/pm/LauncherApps$Callback;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/pm/InstallSessionTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherModel$ModelUpdateTask;,
        Lcom/android/launcher3/LauncherModel$CallbackTask;,
        Lcom/android/launcher3/LauncherModel$ModelLoadedListener;,
        Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    }
.end annotation


# static fields
.field private static final DEBUG_RECEIVER:Z = false

.field static final TAG:Ljava/lang/String; = "Launcher.Model"


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacksList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataValidationCheck:Ljava/lang/Runnable;

.field private mHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

.field private mIsLoaderTaskRunning:Z

.field private mLoadedListener:Lcom/android/launcher3/LauncherModel$ModelLoadedListener;

.field private mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private final mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

.field private mModelDestroyed:Z

.field private mModelLoaded:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLoadedListener(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/LauncherModel$ModelLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mLoadedListener:Lcom/android/launcher3/LauncherModel$ModelLoadedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoaderTask(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/LoaderTask;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/launcher3/LauncherModel;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModelDelegate(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/model/ModelDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModelLoaded(Lcom/android/launcher3/LauncherModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsLoaderTaskRunning(Lcom/android/launcher3/LauncherModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLoaderTask(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmModelLoaded(Lcom/android/launcher3/LauncherModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smduplicateAppDelete(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->duplicateAppDelete(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetCheckItems(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->getCheckItems(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetDbCursor(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->getDbCursor(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smreplaceApp(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->replaceApp(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p3, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p4, "appFilter"    # Lcom/android/launcher3/AppFilter;
    .param p5, "isPrimaryInstance"    # Z

    .line 235
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 153
    new-instance v1, Lcom/android/launcher3/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherModel$1;-><init>(Lcom/android/launcher3/LauncherModel;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mDataValidationCheck:Ljava/lang/Runnable;

    .line 162
    new-instance v1, Lcom/android/launcher3/LauncherModel$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherModel$2;-><init>(Lcom/android/launcher3/LauncherModel;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

    .line 236
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 237
    new-instance v1, Lcom/android/launcher3/model/AllAppsList;

    invoke-direct {v1, p3, p4, v0}, Lcom/android/launcher3/model/AllAppsList;-><init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Lcom/android/launcher3/model/BgDataModel;)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    .line 238
    invoke-static {p1, p2, v1, v0, p5}, Lcom/android/launcher3/model/ModelDelegate;->newInstance(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mHideLauncherIconListener:Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;

    invoke-static {v0}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider;->setHideLauncherIconListener(Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconContentProvider$HideLauncherIconListener;)V

    .line 241
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->getInstance()Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;

    move-result-object v0

    .line 242
    .local v0, "client":Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerShortcutServiceClient;->doBindService(Landroid/content/Context;)V

    .line 245
    :cond_0
    return-void
.end method

.method private static duplicateAppDelete(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 898
    .local p1, "checkItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    .local p2, "deleteItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 899
    .local v2, "checkItem":Lcom/android/launcher3/model/data/AppInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 900
    .local v3, "checkId":I
    if-nez v3, :cond_0

    .line 901
    goto :goto_0

    .line 903
    :cond_0
    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 904
    .local v4, "checkIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 905
    .local v5, "checkComponentName":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    .line 906
    .local v7, "deleteItem":Lcom/android/launcher3/model/data/AppInfo;
    iget v8, v7, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 907
    .local v8, "deleteId":I
    iget-object v9, v7, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 908
    .local v9, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 909
    .local v10, "deleteComponentName":Landroid/content/ComponentName;
    if-ge v3, v8, :cond_1

    invoke-virtual {v5, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 910
    move-object v11, v7

    .line 911
    .local v11, "resetInfo":Lcom/android/launcher3/model/data/AppInfo;
    const/4 v12, 0x0

    iput v12, v11, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 912
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v12, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-static {v8}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v12

    .line 915
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    .end local v7    # "deleteItem":Lcom/android/launcher3/model/data/AppInfo;
    .end local v8    # "deleteId":I
    .end local v11    # "resetInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_1
    goto :goto_1

    .line 918
    .end local v2    # "checkItem":Lcom/android/launcher3/model/data/AppInfo;
    .end local v3    # "checkId":I
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v10    # "deleteComponentName":Landroid/content/ComponentName;
    :cond_2
    goto :goto_0

    .line 919
    .end local v4    # "checkIntent":Landroid/content/Intent;
    .end local v5    # "checkComponentName":Landroid/content/ComponentName;
    :cond_3
    return-void
.end method

.method public static duplicateCheck(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 839
    new-instance v0, Lcom/android/launcher3/LauncherModel$9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$9;-><init>(Landroid/content/Context;)V

    .line 853
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 854
    return-void
.end method

.method private static getCheckItems(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 951
    .local p1, "checkItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-static {p0}, Lcom/sonymobile/launcher/util/UserManagerUtils;->getMainProfileUserId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "profileId":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;

    .line 954
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    const/4 v4, 0x0

    const-string v5, "profileId=?"

    const-string v7, "title,intent,container,screen,cellX,cellY,rank,itemType"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;-><init>(Landroid/database/Cursor;)V

    .line 965
    .local v1, "cursor":Lcom/sonymobile/launcher/configuration/LauncherDbCursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getItemType()I

    move-result v2

    if-eqz v2, :cond_1

    .line 967
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getItemType()I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 968
    :cond_1
    new-instance v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 969
    .local v2, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getContainer()I

    move-result v3

    int-to-long v3, v3

    .line 970
    .local v3, "container":J
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getId()I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 971
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    .line 972
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getContainer()I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/AppInfo;->container:I

    .line 973
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getScreen()I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/AppInfo;->screenId:I

    .line 974
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getCellX()I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/AppInfo;->cellX:I

    .line 975
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getCellY()I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/AppInfo;->cellY:I

    .line 976
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getRank()I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/AppInfo;->rank:I

    .line 977
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getItemType()I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/AppInfo;->itemType:I

    .line 978
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getIntent()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    .local v5, "sIntent":Ljava/lang/String;
    :try_start_1
    invoke-static {v5, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    goto :goto_1

    .line 981
    :catch_0
    move-exception v6

    .line 982
    .local v6, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v7, "Launcher.Model"

    const-string v10, "URISyntaxException"

    invoke-static {v7, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v6    # "e":Ljava/net/URISyntaxException;
    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 985
    nop

    .end local v2    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v3    # "container":J
    .end local v5    # "sIntent":Ljava/lang/String;
    goto :goto_0

    .line 991
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->close()V

    .line 992
    .end local v1    # "cursor":Lcom/sonymobile/launcher/configuration/LauncherDbCursor;
    return-void

    .line 953
    .restart local v1    # "cursor":Lcom/sonymobile/launcher/configuration/LauncherDbCursor;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method private static getDbCursor(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 858
    .local p1, "checkItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    .local p2, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/sonymobile/launcher/util/UserManagerUtils;->getMainProfileUserId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "profileId":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;

    .line 861
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v4, 0x0

    const-string v5, "profileId=?"

    const-string v7, "container,itemType,intent"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;-><init>(Landroid/database/Cursor;)V

    .line 867
    .local v1, "cursor":Lcom/sonymobile/launcher/configuration/LauncherDbCursor;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 868
    new-instance v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 869
    .local v2, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getContainer()I

    move-result v3

    .line 870
    .local v3, "container":I
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getContainer()I

    move-result v4

    const/16 v5, -0x66

    if-eq v4, v5, :cond_0

    if-eqz p2, :cond_2

    .line 871
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 872
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getItemType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 873
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getId()I

    move-result v4

    iput v4, v2, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 874
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getContainer()I

    move-result v4

    iput v4, v2, Lcom/android/launcher3/model/data/AppInfo;->container:I

    .line 875
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getIntent()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    .local v4, "sIntent":Ljava/lang/String;
    :try_start_1
    invoke-static {v4, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    goto :goto_1

    .line 878
    :catch_0
    move-exception v5

    .line 879
    .local v5, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v6, "Launcher.Model"

    const-string v7, "URISyntaxException"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    .end local v5    # "e":Ljava/net/URISyntaxException;
    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    nop

    .end local v4    # "sIntent":Ljava/lang/String;
    goto :goto_2

    .line 884
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 887
    .end local v2    # "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    .end local v3    # "container":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 888
    :cond_3
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->close()V

    .line 889
    .end local v1    # "cursor":Lcom/sonymobile/launcher/configuration/LauncherDbCursor;
    return-void

    .line 860
    .restart local v1    # "cursor":Lcom/sonymobile/launcher/configuration/LauncherDbCursor;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/sonymobile/launcher/configuration/LauncherDbCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method

.method private static replaceApp(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1000
    .local p1, "checkItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/AppInfo;>;"
    .local p2, "replaceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1002
    .local v0, "oldItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher3/model/data/AppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 1003
    .local v2, "checkItem":Lcom/android/launcher3/model/data/AppInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/AppInfo;->id:I

    .line 1004
    .local v3, "checkId":I
    if-nez v3, :cond_0

    .line 1005
    goto :goto_0

    .line 1007
    :cond_0
    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 1008
    .local v4, "checkIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1009
    .local v5, "checkComponentName":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    .line 1010
    .local v7, "oldItem":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v8, v7, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1011
    move-object v8, v4

    .line 1012
    .local v8, "replaceIntent":Landroid/content/Intent;
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/AppInfo;

    .line 1013
    .local v9, "replaceItem":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v10, v9, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1014
    iput-object v8, v2, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 1015
    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1017
    .end local v7    # "oldItem":Lcom/android/launcher3/model/data/AppInfo;
    .end local v8    # "replaceIntent":Landroid/content/Intent;
    .end local v9    # "replaceItem":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    goto :goto_1

    .line 1018
    .end local v2    # "checkItem":Lcom/android/launcher3/model/data/AppInfo;
    .end local v3    # "checkId":I
    .end local v5    # "checkComponentName":Landroid/content/ComponentName;
    :cond_2
    goto :goto_0

    .line 1019
    .end local v4    # "checkIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public static replaceCheck(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 922
    new-instance v0, Lcom/android/launcher3/LauncherModel$10;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$10;-><init>(Landroid/content/Context;)V

    .line 941
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 942
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 945
    :cond_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 947
    :goto_0
    return-void
.end method

.method private startLoader([Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z
    .locals 19
    .param p1, "newCallbacks"    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 502
    move-object/from16 v1, p0

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, v1, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 503
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    .line 504
    iget-object v2, v1, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 506
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    move-result v0

    .line 507
    .local v0, "wasRunning":Z
    iget-boolean v3, v1, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 508
    .local v3, "bindDirectly":Z
    :goto_0
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    move-object/from16 v6, p1

    :try_start_1
    array-length v7, v6

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    move-object/from16 v6, p1

    :goto_1
    move v7, v4

    .line 509
    .local v7, "bindAllCallbacks":Z
    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v6

    .line 511
    .local v8, "callbacksList":[Lcom/android/launcher3/model/BgDataModel$Callbacks;
    :goto_3
    array-length v9, v8

    if-lez v9, :cond_6

    .line 513
    array-length v9, v8

    move v10, v5

    :goto_4
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 514
    .local v11, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    sget-object v12, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda0;

    invoke-direct {v13, v11}, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-virtual {v12, v13}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 513
    .end local v11    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 517
    :cond_4
    new-instance v9, Lcom/android/launcher3/model/LoaderResults;

    iget-object v10, v1, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v11, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v12, v1, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-direct {v9, v10, v11, v12, v8}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 519
    .local v9, "loaderResults":Lcom/android/launcher3/model/LoaderResults;
    if-eqz v3, :cond_5

    .line 522
    invoke-virtual {v9, v7}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspace(Z)V

    .line 525
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderResults;->bindOwnOrderApps()V

    .line 526
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderResults;->bindAllApps()V

    .line 527
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    .line 528
    invoke-virtual {v9}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    .line 529
    monitor-exit v2

    return v4

    .line 531
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    .line 532
    new-instance v4, Lcom/android/launcher3/model/LoaderTask;

    iget-object v14, v1, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v15, v1, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v10, v1, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v11, v1, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    move-object v13, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    iput-object v4, v1, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 537
    sget-object v4, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v10, v1, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    invoke-virtual {v4, v10}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 540
    .end local v0    # "wasRunning":Z
    .end local v3    # "bindDirectly":Z
    .end local v7    # "bindAllCallbacks":Z
    .end local v8    # "callbacksList":[Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .end local v9    # "loaderResults":Lcom/android/launcher3/model/LoaderResults;
    :cond_6
    monitor-exit v2

    .line 541
    return v5

    .line 540
    :catchall_0
    move-exception v0

    move-object/from16 v6, p1

    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private stopLoader()Z
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 568
    .local v1, "oldTask":Lcom/android/launcher3/model/LoaderTask;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 569
    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v1}, Lcom/android/launcher3/model/LoaderTask;->stopLocked()V

    .line 571
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 573
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 574
    .end local v1    # "oldTask":Lcom/android/launcher3/model/LoaderTask;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addAndBindAddedWorkspaceItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 255
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 256
    .local v3, "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    invoke-interface {v3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->preAddApps()V

    .line 255
    .end local v3    # "cb":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;

    invoke-direct {v0, p1}, Lcom/sonymobile/launcher/XperiaAddHotseatOrWorkspaceItemsTask;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 259
    return-void
.end method

.method public addCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 4
    .param p1, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 480
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 481
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 482
    :try_start_0
    sget-boolean v1, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "b/200572078"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallbacks pointer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 483
    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z
    .locals 3
    .param p1, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 469
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->addCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 471
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherModel;->startLoader([Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 473
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    .locals 2
    .param p1, "task"    # Lcom/android/launcher3/model/LoaderTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 689
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/LauncherModel$LoaderTransaction-IA;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    .line 383
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/ModelDelegate;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 807
    array-length v0, p4

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "All apps list: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v1, v1, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    .line 810
    .local v1, "info":Lcom/android/launcher3/model/data/AppInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" bitmapIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v3, v3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 812
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 810
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    .end local v1    # "info":Lcom/android/launcher3/model/data/AppInfo;
    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/model/ModelDelegate;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BgDataModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V
    .locals 7
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$ModelUpdateTask;

    .line 726
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    if-eqz v0, :cond_0

    .line 727
    return-void

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    move-object v1, p1

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/launcher3/LauncherModel$ModelUpdateTask;->init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;Ljava/util/concurrent/Executor;)V

    .line 730
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method

.method public existsGameEnhancerShortcut()Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerUtil;->existsGameEnhancerShortcut(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public forceReload()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    .line 430
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    .line 438
    :cond_0
    return-void

    .line 431
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    monitor-exit v0

    return-object v1

    .line 835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    return-object v0
.end method

.method public getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;
    .locals 8
    .param p1, "hasVerticalHotseat"    # Z
    .param p2, "verifyChanges"    # Z
    .param p3, "owner"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 263
    new-instance v7, Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object v0, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/model/ModelWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-object v7
.end method

.method public hasCallbacks()Z
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isModelLoaded()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelDestroyed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$loadAsync$0$com-android-launcher3-LauncherModel(Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 587
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$updateAndBindWorkspaceItem$1$com-android-launcher3-LauncherModel(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1
    .param p1, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 774
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 775
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 776
    return-object p1
.end method

.method public loadAsync(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/BgDataModel;",
            ">;)V"
        }
    .end annotation

    .line 582
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/model/BgDataModel;>;"
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mModelLoaded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-nez v1, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    .line 586
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 588
    return-void

    .line 586
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 361
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 363
    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v1, v0, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 364
    invoke-virtual {v1, p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v1

    .line 365
    .local v1, "pinnedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    new-instance v2, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, p2, v3}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 388
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_1

    .line 392
    :cond_0
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    if-nez v2, :cond_2

    .line 393
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    const-string v1, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 412
    new-instance v1, Lcom/android/launcher3/model/ReloadStringCacheTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-direct {v1, v2}, Lcom/android/launcher3/model/ReloadStringCacheTask;-><init>(Lcom/android/launcher3/model/ModelDelegate;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_1

    .line 395
    :cond_2
    :goto_0
    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 396
    .local v2, "user":Landroid/os/UserHandle;
    if-eqz v2, :cond_6

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    :cond_3
    new-instance v1, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v1, v5, v2, v6}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 405
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 406
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 407
    :cond_5
    new-instance v1, Lcom/android/launcher3/model/UserLockStateChangedTask;

    .line 408
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/model/UserLockStateChangedTask;-><init>(Landroid/os/UserHandle;Z)V

    .line 407
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 411
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_6
    nop

    .line 420
    :goto_1
    return-void
.end method

.method public onInstallSessionCreated(Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 592
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Lcom/android/launcher3/LauncherModel$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$4;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 601
    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 291
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->getInstance()Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    move-result-object v0

    .line 292
    .local v0, "manager":Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->existsGamePackageName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    const/4 v1, 0x1

    .line 297
    .local v1, "op":I
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v1, p2, v3}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 298
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 269
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->getInstance()Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    move-result-object v0

    .line 270
    .local v0, "manager":Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->existsGamePackageName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    const/4 v1, 0x2

    .line 275
    .local v1, "op":I
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v1, p2, v3}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 276
    return-void
.end method

.method public onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 708
    .local p1, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 710
    return-void
.end method

.method public onPackageLoadingProgressChanged(Ljava/lang/String;Landroid/os/UserHandle;F)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "progress"    # F

    .line 342
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;-><init>(Ljava/lang/String;Landroid/os/UserHandle;F)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 346
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 280
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/LauncherModel;->onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public onPackageStateChanged(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .locals 1
    .param p1, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;

    .line 635
    new-instance v0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;-><init>(Lcom/android/launcher3/pm/PackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 636
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 7
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->getInstance()Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;

    move-result-object v1

    .line 305
    .local v1, "manager":Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 306
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lcom/sonymobile/launcher/gameenhancer/HideLauncherIconManager;->existsGamePackageName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 307
    goto :goto_1

    .line 309
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    return-void

    .line 314
    :cond_2
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v4, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 315
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v4, p2, v3}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 316
    return-void
.end method

.method public varargs onPackagesRemoved(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packages"    # [Ljava/lang/String;

    .line 284
    const/4 v0, 0x3

    .line 285
    .local v0, "op":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package removed received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v1, Lcom/android/launcher3/model/PackageUpdatedTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 287
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 329
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 331
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 321
    if-nez p3, :cond_0

    .line 322
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 325
    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 335
    new-instance v0, Lcom/android/launcher3/model/PackageUpdatedTask;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p2, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 337
    return-void
.end method

.method public onSessionFailure(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 605
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_NEW_INSTALLS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    return-void

    .line 608
    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherModel$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/LauncherModel$5;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 631
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 351
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Lcom/android/launcher3/model/ShortcutsChangedTask;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/launcher3/model/ShortcutsChangedTask;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 352
    return-void
.end method

.method public onUpdateSessionDisplay(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 4
    .param p1, "key"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p2, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 643
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->updateSessionCache(Lcom/android/launcher3/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    .line 645
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 646
    .local v0, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance v1, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 649
    return-void
.end method

.method public onWidgetLabelsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 1
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 716
    .local p1, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$6;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 723
    return-void
.end method

.method public onWorkspaceUiChanged()V
    .locals 3

    .line 375
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/ModelDelegate;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method public rebindCallbacks()V
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    .line 447
    :cond_0
    return-void
.end method

.method public refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 1
    .param p1, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;

    .line 797
    new-instance v0, Lcom/android/launcher3/LauncherModel$8;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$8;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 804
    return-void
.end method

.method public removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 454
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 455
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->startLoader()Z

    .line 461
    :cond_0
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setModelLoadedListener(Lcom/android/launcher3/LauncherModel$ModelLoadedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/LauncherModel$ModelLoadedListener;

    .line 743
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel;->mLoadedListener:Lcom/android/launcher3/LauncherModel$ModelLoadedListener;

    .line 744
    return-void
.end method

.method public startLoader()Z
    .locals 1

    .line 497
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherModel;->startLoader([Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    move-result v0

    return v0
.end method

.method public startLoaderNoCallback()V
    .locals 8

    .line 546
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->pauseModelPush(I)V

    .line 547
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    .line 550
    new-instance v6, Lcom/android/launcher3/model/LoaderResults;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 552
    .local v6, "loaderResults":Lcom/android/launcher3/model/LoaderResults;
    new-instance v7, Lcom/android/launcher3/model/LoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, p0, Lcom/android/launcher3/LauncherModel;->mModelDelegate:Lcom/android/launcher3/model/ModelDelegate;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    iput-object v7, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    .line 557
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/model/LoaderTask;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 558
    .end local v6    # "loaderResults":Lcom/android/launcher3/model/LoaderResults;
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public submitModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$ModelUpdateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherModel$ModelUpdateTask;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 734
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    move-object v0, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/LauncherModel$ModelUpdateTask;->init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;Ljava/util/concurrent/Executor;)V

    .line 735
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateAndBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V
    .locals 1
    .param p1, "si"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 773
    new-instance v0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V

    .line 778
    return-void
.end method

.method public updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 784
    .local p1, "itemProvider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/LauncherModel$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$7;-><init>(Lcom/android/launcher3/LauncherModel;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 794
    return-void
.end method

.method public updateApp(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 204
    new-instance v0, Lcom/android/launcher3/LauncherModel$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherModel$3;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 232
    return-void
.end method

.method public validateModelDataOnResume()V
    .locals 2

    .line 698
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mDataValidationCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel;->mDataValidationCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 700
    return-void
.end method
