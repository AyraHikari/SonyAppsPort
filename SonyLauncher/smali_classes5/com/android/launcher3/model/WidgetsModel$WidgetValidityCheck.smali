.class Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;
.super Ljava/lang/Object;
.source "WidgetsModel.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/WidgetsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetValidityCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/launcher3/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppFilter:Lcom/android/launcher3/AppFilter;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 273
    new-instance v0, Lcom/android/launcher3/AppFilter;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;->mAppFilter:Lcom/android/launcher3/AppFilter;

    .line 274
    return-void
.end method


# virtual methods
.method public test(Lcom/android/launcher3/model/WidgetItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 278
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 281
    return v1

    .line 285
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isMinSizeFulfilled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    return v1

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;->mAppFilter:Lcom/android/launcher3/AppFilter;

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    return v1

    .line 302
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 266
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/WidgetsModel$WidgetValidityCheck;->test(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p1

    return p1
.end method
