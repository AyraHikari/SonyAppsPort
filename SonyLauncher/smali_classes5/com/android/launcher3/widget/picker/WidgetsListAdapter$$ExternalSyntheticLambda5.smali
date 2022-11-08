.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$new$0$com-android-launcher3-widget-picker-WidgetsListAdapter(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p1

    return p1
.end method
