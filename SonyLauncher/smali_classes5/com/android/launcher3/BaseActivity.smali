.class public abstract Lcom/android/launcher3/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/android/launcher3/views/AppLauncher;
.implements Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;,
        Lcom/android/launcher3/BaseActivity$ActivityFlags;,
        Lcom/android/launcher3/BaseActivity$InvisibilityFlags;
    }
.end annotation


# static fields
.field public static final ACTIVITY_STATE_DEFERRED_RESUMED:I = 0x4

.field public static final ACTIVITY_STATE_RESUMED:I = 0x2

.field public static final ACTIVITY_STATE_STARTED:I = 0x1

.field public static final ACTIVITY_STATE_TRANSITION_ACTIVE:I = 0x40

.field public static final ACTIVITY_STATE_USER_ACTIVE:I = 0x10

.field public static final ACTIVITY_STATE_USER_WILL_BE_ACTIVE:I = 0x20

.field public static final ACTIVITY_STATE_WINDOW_FOCUSED:I = 0x8

.field public static final INVISIBLE_ALL:I = 0xf

.field public static final INVISIBLE_BY_APP_TRANSITIONS:I = 0x2

.field public static final INVISIBLE_BY_PENDING_FLAGS:I = 0x4

.field public static final INVISIBLE_BY_STATE_HANDLER:I = 0x1

.field private static final INVISIBLE_FLAGS:I = 0x7

.field public static final PENDING_INVISIBLE_BY_WALLPAPER_ANIMATION:I = 0x8

.field public static final STATE_HANDLER_INVISIBILITY_FLAGS:I = 0x9

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private mActivityFlags:I

.field private final mDPChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mForceInvisible:I

.field private final mMultiWindowModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field protected mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

.field private final mViewCache:Lcom/android/launcher3/util/ViewCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Lcom/android/launcher3/util/ViewCache;

    invoke-direct {v0}, Lcom/android/launcher3/util/ViewCache;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/BaseActivity;",
            ">(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 312
    instance-of v0, p0, Lcom/android/launcher3/BaseActivity;

    if-eqz v0, :cond_0

    .line 313
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    return-object v0

    .line 314
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 315
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    return-object v0

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find BaseActivity in parent tree"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected addActivityFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 255
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActivityFlagsChanged(I)V

    .line 257
    return-void
.end method

.method public addForceInvisibleFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 280
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 281
    return-void
.end method

.method public addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public clearForceInvisibleFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 284
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 285
    return-void
.end method

.method protected dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deviceProfile isTransposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSystemUiController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mActivityFlags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mForceInvisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public getActivityFlags()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    return v0
.end method

.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object v0
.end method

.method public getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScrimView()Lcom/android/launcher3/views/ScrimView;
    .locals 1

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    if-nez v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object v0
.end method

.method public getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/launcher3/util/SystemUiController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object v0
.end method

.method public getViewCache()Lcom/android/launcher3/util/ViewCache;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    return-object v0
.end method

.method public hasBeenResumed()Z
    .locals 1

    .line 243
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSomeInvisibleFlag(I)Z
    .locals 1
    .param p1, "mask"    # I

    .line 295
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForceInvisible()Z
    .locals 1

    .line 291
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 236
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserActive()Z
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActivityFlagsChanged(I)V
    .locals 0
    .param p1, "changeBits"    # I

    .line 264
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 195
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    .line 196
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 214
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 182
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    .line 183
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 178
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 203
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mForceInvisible:I

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 210
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 189
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 191
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 227
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->addActivityFlags(I)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseActivity;->removeActivityFlags(I)V

    .line 233
    :goto_0
    return-void
.end method

.method protected removeActivityFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 260
    iget v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/BaseActivity;->mActivityFlags:I

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActivityFlagsChanged(I)V

    .line 262
    return-void
.end method

.method public removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method
