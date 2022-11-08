.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

.field public final synthetic f$1:Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    return-void
.end method


# virtual methods
.method public final onExpansionChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->lambda$bindViewHolder$0$com-android-launcher3-widget-picker-WidgetsListSearchHeaderViewHolderBinder(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;Z)V

    return-void
.end method
