.class public Lcom/android/launcher3/folder/FolderNameInfos;
.super Ljava/lang/Object;
.source "FolderNameInfos.java"


# static fields
.field public static final ERROR_ALL_APP_LOOKUP_FAILED:I = 0x20

.field public static final ERROR_ALL_LABEL_LOOKUP_FAILED:I = 0x100

.field public static final ERROR_APP_LOOKUP_FAILED:I = 0x10

.field public static final ERROR_LABEL_LOOKUP_FAILED:I = 0x80

.field public static final ERROR_NO_LABELS_GENERATED:I = 0x40

.field public static final ERROR_NO_PACKAGES:I = 0x200

.field public static final ERROR_NO_PROVIDER:I = 0x8

.field public static final HAS_PRIMARY:I = 0x2

.field public static final HAS_SUGGESTIONS:I = 0x4

.field public static final SUCCESS:I = 0x1


# instance fields
.field private final mLabels:[Ljava/lang/CharSequence;

.field private final mScores:[Ljava/lang/Float;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    .line 47
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    .line 48
    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    .line 49
    return-void
.end method

.method static synthetic lambda$contains$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "l"    # Ljava/lang/CharSequence;

    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda1;-><init>()V

    .line 97
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderNameInfos$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/folder/FolderNameInfos$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 96
    return v0
.end method

.method public getLabels()[Ljava/lang/CharSequence;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getScores()[Ljava/lang/Float;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    return-object v0
.end method

.method public hasPrimary()Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasSuggestions()Z
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 77
    .local v4, "l":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x1

    return v0

    .line 76
    .end local v4    # "l":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    return v2
.end method

.method public setLabel(ILjava/lang/CharSequence;Ljava/lang/Float;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "score"    # Ljava/lang/Float;

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 87
    aput-object p2, v0, p1

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mScores:[Ljava/lang/Float;

    aput-object p3, v0, p1

    .line 90
    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "statusBit"    # I

    .line 55
    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    .line 56
    return-void
.end method

.method public status()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderNameInfos;->mLabels:[Ljava/lang/CharSequence;

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 113
    const-string v1, "status=%s, labels=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
