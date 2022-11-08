.class Lcom/android/launcher3/settings/PreferenceHighlighter$1;
.super Landroid/util/Property;
.source "PreferenceHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/PreferenceHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/settings/PreferenceHighlighter;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 45
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/settings/PreferenceHighlighter;)Ljava/lang/Integer;
    .locals 1
    .param p1, "highlighter"    # Lcom/android/launcher3/settings/PreferenceHighlighter;

    .line 49
    invoke-static {p1}, Lcom/android/launcher3/settings/PreferenceHighlighter;->-$$Nest$fgetmHighlightColor(Lcom/android/launcher3/settings/PreferenceHighlighter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lcom/android/launcher3/settings/PreferenceHighlighter;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/settings/PreferenceHighlighter$1;->get(Lcom/android/launcher3/settings/PreferenceHighlighter;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/launcher3/settings/PreferenceHighlighter;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "highlighter"    # Lcom/android/launcher3/settings/PreferenceHighlighter;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 54
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/settings/PreferenceHighlighter;->-$$Nest$fputmHighlightColor(Lcom/android/launcher3/settings/PreferenceHighlighter;I)V

    .line 55
    invoke-static {p1}, Lcom/android/launcher3/settings/PreferenceHighlighter;->-$$Nest$fgetmRv(Lcom/android/launcher3/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 56
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/launcher3/settings/PreferenceHighlighter;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/settings/PreferenceHighlighter$1;->set(Lcom/android/launcher3/settings/PreferenceHighlighter;Ljava/lang/Integer;)V

    return-void
.end method
