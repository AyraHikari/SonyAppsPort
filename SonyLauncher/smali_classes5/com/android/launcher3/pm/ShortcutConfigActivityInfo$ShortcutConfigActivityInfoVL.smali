.class Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;
.super Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.source "ShortcutConfigActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortcutConfigActivityInfoVL"
.end annotation


# instance fields
.field private final mInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 120
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 121
    iput-object p1, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 122
    return-void
.end method


# virtual methods
.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "cache"    # Lcom/android/launcher3/icons/IconCache;

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/icons/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
