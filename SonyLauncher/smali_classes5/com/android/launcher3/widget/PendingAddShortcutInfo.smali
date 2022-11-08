.class public Lcom/android/launcher3/widget/PendingAddShortcutInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "PendingAddShortcutInfo.java"


# instance fields
.field public activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V
    .locals 1
    .param p1, "activityInfo"    # Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 32
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 34
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    .line 35
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->user:Landroid/os/UserHandle;

    .line 36
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getItemType()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->itemType:I

    .line 37
    const/16 v0, -0x69

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->container:I

    .line 38
    return-void
.end method
