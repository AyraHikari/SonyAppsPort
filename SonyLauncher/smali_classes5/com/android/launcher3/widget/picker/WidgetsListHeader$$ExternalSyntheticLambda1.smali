.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

.field public final synthetic f$1:Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->lambda$setOnExpandChangeListener$0$com-android-launcher3-widget-picker-WidgetsListHeader(Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;Landroid/view/View;)V

    return-void
.end method
