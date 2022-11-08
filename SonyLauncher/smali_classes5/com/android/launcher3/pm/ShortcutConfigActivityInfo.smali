.class public abstract Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.super Ljava/lang/Object;
.source "ShortcutConfigActivityInfo.java"

# interfaces
.implements Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;,
        Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SCActivityInfo"


# instance fields
.field private final mCn:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method protected constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    .line 62
    iput-object p2, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 63
    return-void
.end method

.method public static queryList(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageUser"    # Lcom/android/launcher3/util/PackageUserKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;>;"
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 179
    .local v1, "myUser":Landroid/os/UserHandle;
    if-nez p1, :cond_0

    .line 180
    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v2}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v3, 0x0

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 184
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 186
    .restart local v3    # "packageName":Ljava/lang/String;
    :goto_0
    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    .line 187
    .local v4, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 188
    .local v6, "user":Landroid/os/UserHandle;
    invoke-virtual {v1, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 190
    .local v7, "ignoreTargetSdk":Z
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/LauncherApps;->getShortcutConfigActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherActivityInfo;

    .line 191
    .local v9, "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    if-nez v7, :cond_1

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_2

    .line 193
    :cond_1
    new-instance v10, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

    invoke-direct {v10, v9}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v9    # "activityInfo":Landroid/content/pm/LauncherActivityInfo;
    :cond_2
    goto :goto_2

    .line 196
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v7    # "ignoreTargetSdk":Z
    :cond_3
    goto :goto_1

    .line 197
    :cond_4
    return-object v0
.end method


# virtual methods
.method public createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->mCn:Landroid/content/ComponentName;

    return-object v0
.end method

.method public abstract getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public getItemType()I
    .locals 1

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isPersistable()Z
    .locals 1

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v1, 0x1

    return v1

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/SecurityException;
    sget v3, Lcom/android/launcher3/R$string;->activity_not_found:I

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCActivityInfo"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    sget v3, Lcom/android/launcher3/R$string;->activity_not_found:I

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 103
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    nop

    .line 104
    :goto_0
    return v1
.end method
