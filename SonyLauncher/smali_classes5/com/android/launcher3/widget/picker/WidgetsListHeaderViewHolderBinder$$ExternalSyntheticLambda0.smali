.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

.field public final synthetic f$1:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    return-void
.end method


# virtual methods
.method public final onExpansionChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->lambda$bindViewHolder$0$com-android-launcher3-widget-picker-WidgetsListHeaderViewHolderBinder(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Z)V

    return-void
.end method
