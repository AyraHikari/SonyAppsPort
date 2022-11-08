.class public final synthetic Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->lambda$getRecommendedWidgets$3(Ljava/util/HashMap;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p1

    return-object p1
.end method
