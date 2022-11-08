.class public final synthetic Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$1$com-android-launcher3-widget-picker-WidgetsFullSheet(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p1

    return p1
.end method
