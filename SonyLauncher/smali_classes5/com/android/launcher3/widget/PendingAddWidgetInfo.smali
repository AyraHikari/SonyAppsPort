.class public Lcom/android/launcher3/widget/PendingAddWidgetInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# instance fields
.field public bindOptions:Landroid/os/Bundle;

.field public boundWidget:Landroid/appwidget/AppWidgetHostView;

.field public icon:I

.field public info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

.field public previewImage:I

.field public sourceContainer:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V
    .locals 1
    .param p1, "i"    # Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    .param p2, "container"    # I

    .line 42
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 43
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    .line 48
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->user:Landroid/os/UserHandle;

    .line 50
    iget-object v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 51
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->previewImage:I

    .line 52
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->icon:I

    .line 54
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 55
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 56
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 57
    iget v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 58
    iput p2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->container:I

    iput p2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    .line 59
    return-void
.end method


# virtual methods
.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 3
    .param p1, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 71
    invoke-super {p0, p1}, Lcom/android/launcher3/PendingAddItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    .line 72
    .local v0, "info":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    iget v2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    .line 73
    invoke-static {v2}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getAttribute(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 72
    return-object v1
.end method

.method public getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    iget v2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .locals 2

    .line 62
    new-instance v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    return-object v0
.end method
