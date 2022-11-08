.class Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;
.super Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.source "PinShortcutRequestActivityInfo.java"


# static fields
.field private static final STUB_COMPONENT_CLASS:Ljava/lang/String; = "pinned-shortcut"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Landroid/content/pm/ShortcutInfo;

.field private final mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V
    .locals 3
    .param p1, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;
    .param p2, "context"    # Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pinned-shortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 60
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 61
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    .line 62
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$integer;->config_dropAnimMaxDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 93
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2, v3, v0, v1}, Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    return-object v2
.end method

.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "cache"    # Lcom/android/launcher3/icons/IconCache;

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/icons/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 67
    const/4 v0, 0x6

    return v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;->mInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isPersistable()Z
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public startConfigActivity(Landroid/app/Activity;I)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 99
    const/4 v0, 0x0

    return v0
.end method
