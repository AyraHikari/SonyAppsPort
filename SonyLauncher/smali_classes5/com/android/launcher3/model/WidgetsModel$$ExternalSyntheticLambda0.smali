.class public final synthetic Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/WidgetsModel;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic f$2:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WidgetsModel;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/WidgetsModel;

    iput-object p2, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/model/WidgetsModel;->lambda$setWidgetsAndShortcuts$3$com-android-launcher3-model-WidgetsModel(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
