.class Landroidx/slice/widget/DisplayedListItems;
.super Ljava/lang/Object;
.source "DisplayedListItems.java"


# instance fields
.field private final mDisplayedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHiddenItemCount:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "hiddenItemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;I)V"
        }
    .end annotation

    .line 33
    .local p1, "displayedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/widget/SliceContent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/slice/widget/DisplayedListItems;->mDisplayedItems:Ljava/util/List;

    .line 35
    iput p2, p0, Landroidx/slice/widget/DisplayedListItems;->mHiddenItemCount:I

    .line 36
    return-void
.end method


# virtual methods
.method getDisplayedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Landroidx/slice/widget/DisplayedListItems;->mDisplayedItems:Ljava/util/List;

    return-object v0
.end method

.method getHiddenItemCount()I
    .locals 1

    .line 43
    iget v0, p0, Landroidx/slice/widget/DisplayedListItems;->mHiddenItemCount:I

    return v0
.end method
