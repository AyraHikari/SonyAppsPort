.class public final synthetic Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/launcher3/model/data/PackageItemInfo;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/model/WidgetsModel;->lambda$getAllWidgetsWithoutShortcuts$1(Ljava/util/Map;Lcom/android/launcher3/model/data/PackageItemInfo;Ljava/util/List;)V

    return-void
.end method
