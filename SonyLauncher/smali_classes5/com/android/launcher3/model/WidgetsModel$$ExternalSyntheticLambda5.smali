.class public final synthetic Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

.field public final synthetic f$1:Lcom/android/launcher3/model/WidgetItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    iput-object p2, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/model/WidgetItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/model/WidgetItem;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/WidgetsModel;->lambda$setWidgetsAndShortcuts$2(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/util/PackageUserKey;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
