.class public Lcom/android/launcher3/model/WidgetItem;
.super Lcom/android/launcher3/util/ComponentKey;
.source "WidgetItem.java"


# instance fields
.field public final activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

.field public final label:Ljava/lang/String;

.field public final spanX:I

.field public final spanY:I

.field public final widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    .param p2, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;

    .line 43
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleNoCache(Lcom/android/launcher3/icons/ComponentWithLabel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p2, "idp"    # Lcom/android/launcher3/InvariantDeviceProfile;
    .param p3, "iconCache"    # Lcom/android/launcher3/icons/IconCache;

    .line 32
    iget-object v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 34
    invoke-virtual {p3, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleNoCache(Lcom/android/launcher3/icons/ComponentWithLabel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 38
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 39
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    .line 40
    return-void
.end method


# virtual methods
.method public hasPreviewLayout()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->previewLayout:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSameType(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 2
    .param p1, "otherItem"    # Lcom/android/launcher3/model/WidgetItem;

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 59
    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    .line 62
    return v1

    .line 64
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcut()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
