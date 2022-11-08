.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

.field public final synthetic f$1:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda6;->f$1:Lcom/android/launcher3/util/PackageUserKey;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$$ExternalSyntheticLambda6;->f$1:Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->lambda$getPositionForPackageUserKey$3$com-android-launcher3-widget-picker-WidgetsListAdapter(Lcom/android/launcher3/util/PackageUserKey;I)Z

    move-result p1

    return p1
.end method
