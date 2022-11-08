.class public final synthetic Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/android/launcher3/model/WidgetItem;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/launcher3/model/WidgetItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;->f$1:Lcom/android/launcher3/model/WidgetItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsModel$$ExternalSyntheticLambda6;->f$1:Lcom/android/launcher3/model/WidgetItem;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/WidgetsModel;->lambda$getPackageUserKeys$6(Ljava/util/List;Lcom/android/launcher3/model/WidgetItem;Ljava/lang/Integer;)V

    return-void
.end method
