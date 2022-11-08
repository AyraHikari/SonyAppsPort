.class public Lcom/android/systemui/shared/system/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"


# static fields
.field public static final CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final CLOSE_SYSTEM_WINDOWS_REASON_RECENTS:Ljava/lang/String; = "recentapps"

.field private static final INVOCATION_TIME_MS_KEY:Ljava/lang/String; = "invocation_time_ms"

.field private static final NUM_RECENT_ACTIVITIES_REQUEST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManagerWrapper"

.field private static final sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;


# instance fields
.field private final mAtm:Landroid/app/ActivityTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    .line 76
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 1

    .line 79
    sget-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object v0
.end method

.method public static isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 409
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancelRecentsAnimation(Z)V
    .locals 3
    .param p1, "restoreHomeRootTaskPosition"    # Z

    .line 241
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->cancelRecentsAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManagerWrapper"

    const-string v2, "Failed to cancel recents animation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 305
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManagerWrapper"

    const-string v2, "Failed to close system windows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getCurrentUserId()I
    .locals 2

    .line 88
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 89
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 90
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 2
    .param p1, "numTasks"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2
    .param p1, "filterOnlyVisibleRecents"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x0

    return-object v1

    .line 113
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v1
.end method

.method public getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2
    .param p1, "filterOnlyVisibleRecents"    # Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    .line 128
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v1
.end method

.method public getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "isLowResolution"    # Z

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "snapshot":Landroid/window/TaskSnapshot;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManagerWrapper"

    const-string v3, "Failed to retrieve task snapshot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    new-instance v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V

    return-object v1

    .line 152
    :cond_0
    new-instance v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    return-object v1
.end method

.method public invalidateHomeTaskSnapshot(Landroid/app/Activity;)V
    .locals 3
    .param p1, "homeActivity"    # Landroid/app/Activity;

    .line 165
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    .line 166
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 165
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ActivityManagerWrapper"

    const-string v2, "Failed to invalidate home snapshot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public isLockTaskKioskModeActive()Z
    .locals 3

    .line 368
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public isLockToAppActive()Z
    .locals 2

    .line 357
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public isScreenPinningActive()Z
    .locals 3

    .line 338
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public isScreenPinningEnabled()Z
    .locals 3

    .line 348
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "lock_to_app_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 290
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 291
    return-void
.end method

.method public removeAllRecentTasks()V
    .locals 3

    .line 327
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->removeAllVisibleRecentTasks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManagerWrapper"

    const-string v2, "Failed to remove all tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public removeTask(I)V
    .locals 3
    .param p1, "taskId"    # I

    .line 316
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerWrapper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public showVoiceSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .line 379
    nop

    .line 380
    const-string v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    .line 381
    .local v0, "service":Lcom/android/internal/app/IVoiceInteractionManagerService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    return v1

    .line 384
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "invocation_time_ms"

    invoke-virtual {p2, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 387
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 278
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 279
    .local v0, "optsBundle":Landroid/os/Bundle;
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    const/4 v1, 0x1

    return v1

    .line 281
    .end local v0    # "optsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 270
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 2
    .param p1, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p4, "resultCallbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 255
    .local p3, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    move-result v0

    .line 256
    .local v0, "result":Z
    if-eqz p3, :cond_0

    .line 257
    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$3;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$3;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "eventTime"    # J
    .param p4, "animationHandler"    # Lcom/android/systemui/shared/system/RecentsAnimationListener;
    .param p6, "resultCallbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "J",
            "Lcom/android/systemui/shared/system/RecentsAnimationListener;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 178
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;)Z

    move-result v0

    .line 179
    .local v0, "result":Z
    if-eqz p5, :cond_0

    .line 180
    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;

    invoke-direct {v1, p0, p5, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Ljava/util/function/Consumer;Z)V

    invoke-virtual {p6, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "eventTime"    # J
    .param p4, "animationHandler"    # Lcom/android/systemui/shared/system/RecentsAnimationListener;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "runner":Landroid/view/IRecentsAnimationRunner;
    if-eqz p4, :cond_0

    .line 197
    :try_start_0
    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$2;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V

    move-object v0, v1

    .line 229
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/app/IActivityTaskManager;->startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const/4 v1, 0x1

    return v1

    .line 231
    .end local v0    # "runner":Landroid/view/IRecentsAnimationRunner;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public supportsFreeformMultiWindow(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_freeform_support"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 399
    .local v0, "freeformDevOption":Z
    :goto_0
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.freeform_window_management"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    nop

    .line 399
    :goto_1
    return v2
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 297
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 298
    return-void
.end method
