.class public Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
.super Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.source "ShortcutConfigActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutConfigActivityInfoVO"
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 141
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 142
    iput-object p1, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 143
    return-void
.end method


# virtual methods
.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "cache"    # Lcom/android/launcher3/icons/IconCache;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/IconCache;->getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result v0

    return v0

    .line 160
    :cond_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->getShortcutConfigActivityIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/IntentSender;

    move-result-object v0

    .line 163
    .local v0, "is":Landroid/content/IntentSender;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    :try_start_0
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v1, 0x1

    return v1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    sget v2, Lcom/android/launcher3/R$string;->activity_not_found:I

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 167
    return v3
.end method
