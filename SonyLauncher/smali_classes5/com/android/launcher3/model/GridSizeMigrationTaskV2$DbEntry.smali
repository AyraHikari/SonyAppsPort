.class public Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "GridSizeMigrationTaskV2.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/GridSizeMigrationTaskV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DbEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Ljava/lang/Comparable<",
        "Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mFolderItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIntent:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFolderItems(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mFolderItems:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntent(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mIntent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIntent(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mIntent:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProvider(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mProvider:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 745
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mFolderItems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I
    .locals 2
    .param p1, "another"    # Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 754
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    if-eq v0, v1, :cond_0

    .line 755
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 757
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    if-eq v0, v1, :cond_1

    .line 758
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 760
    :cond_1
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellX:I

    iget v1, p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellX:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 745
    check-cast p1, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->compareTo(Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 765
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 766
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 767
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;

    .line 768
    .local v0, "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mIntent:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mIntent:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 766
    .end local v0    # "entry":Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 773
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->mIntent:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public updateContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 777
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->screenId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    iget v0, p0, Lcom/android/launcher3/model/GridSizeMigrationTaskV2$DbEntry;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    return-void
.end method
