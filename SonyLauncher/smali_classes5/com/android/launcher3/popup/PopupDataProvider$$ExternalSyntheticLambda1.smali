.class public final synthetic Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {v0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->lambda$getRecommendedWidgets$2(Ljava/util/HashMap;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)V

    return-void
.end method
