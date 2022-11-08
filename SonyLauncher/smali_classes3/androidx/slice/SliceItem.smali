.class public final Landroidx/slice/SliceItem;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SliceItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceItem$ActionHandler;,
        Landroidx/slice/SliceItem$SliceType;
    }
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "format"

.field private static final HINTS:Ljava/lang/String; = "hints"

.field private static final OBJ:Ljava/lang/String; = "obj"

.field private static final OBJ_2:Ljava/lang/String; = "obj_2"

.field private static final SLICE_CONTENT:Ljava/lang/String; = "androidx.slice.content"

.field private static final SLICE_CONTENT_SENSITIVE:Ljava/lang/String; = "sensitive"

.field private static final SUBTYPE:Ljava/lang/String; = "subtype"


# instance fields
.field mFormat:Ljava/lang/String;

.field protected mHints:[Ljava/lang/String;

.field mHolder:Landroidx/slice/SliceItemHolder;

.field mObj:Ljava/lang/Object;

.field mSanitizedText:Ljava/lang/CharSequence;

.field mSubType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 113
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 116
    const-string v0, "text"

    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "slice"    # Landroidx/slice/Slice;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "subType"    # Ljava/lang/String;
    .param p5, "hints"    # [Ljava/lang/String;

    .line 163
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p3, p4, p5}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Bundle;

    .line 358
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 113
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 116
    const-string v0, "text"

    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 359
    const-string v0, "hints"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 360
    const-string v0, "format"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 361
    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/slice/SliceItem;->readObj(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 363
    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem$ActionHandler;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Landroidx/slice/SliceItem$ActionHandler;
    .param p2, "slice"    # Landroidx/slice/Slice;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "subType"    # Ljava/lang/String;
    .param p5, "hints"    # [Ljava/lang/String;

    .line 172
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p1, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p3, p4, p5}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p4, "hints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .param p4, "hints"    # [Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 113
    sget-object v0, Landroidx/slice/Slice;->NO_HINTS:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 116
    const-string v0, "text"

    iput-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 135
    iput-object p2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 137
    iput-object p1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private static checkSpan(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "span"    # Ljava/lang/Object;

    .line 696
    instance-of v0, p0, Landroid/text/style/AlignmentSpan;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static checkSpannedText(Landroid/text/Spanned;)Z
    .locals 6
    .param p0, "text"    # Landroid/text/Spanned;

    .line 670
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 671
    .local v4, "span":Ljava/lang/Object;
    invoke-static {v4}, Landroidx/slice/SliceItem;->checkSpan(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v2

    .line 670
    .end local v4    # "span":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 673
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static createRedacted(I)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 650
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createSensitiveSpan()Landroid/text/ParcelableSpan;
    .locals 3

    .line 590
    new-instance v0, Landroid/text/Annotation;

    const-string v1, "androidx.slice.content"

    const-string v2, "sensitive"

    invoke-direct {v0, v1, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static fixSpan(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "span"    # Ljava/lang/Object;

    .line 703
    invoke-static {p0}, Landroidx/slice/SliceItem;->checkSpan(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static fixSpannableText(Landroid/text/Spannable;)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;

    .line 677
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 678
    .local v3, "span":Ljava/lang/Object;
    invoke-static {v3}, Landroidx/slice/SliceItem;->fixSpan(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 679
    .local v4, "fixedSpan":Ljava/lang/Object;
    if-ne v4, v3, :cond_0

    goto :goto_1

    .line 681
    :cond_0
    if-eqz v4, :cond_1

    .line 682
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 683
    .local v5, "spanStart":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 684
    .local v6, "spanEnd":I
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 685
    .local v7, "spanFlags":I
    invoke-interface {p0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 688
    .end local v5    # "spanStart":I
    .end local v6    # "spanEnd":I
    .end local v7    # "spanFlags":I
    :cond_1
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 677
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "fixedSpan":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_2
    return-void
.end method

.method private static isRedactionNeeded(Landroid/text/Spanned;)Z
    .locals 7
    .param p0, "text"    # Landroid/text/Spanned;

    .line 621
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Landroid/text/Annotation;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 622
    .local v4, "span":Landroid/text/Annotation;
    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "androidx.slice.content"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 623
    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sensitive"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 624
    const/4 v0, 0x1

    return v0

    .line 621
    .end local v4    # "span":Landroid/text/Annotation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    :cond_1
    return v2
.end method

.method private static layoutDirectionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "layoutDirection"    # I

    .line 594
    packed-switch p0, :pswitch_data_0

    .line 604
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :pswitch_0
    const-string v0, "LOCALE"

    return-object v0

    .line 600
    :pswitch_1
    const-string v0, "INHERIT"

    return-object v0

    .line 598
    :pswitch_2
    const-string v0, "RTL"

    return-object v0

    .line 596
    :pswitch_3
    const-string v0, "LTR"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readObj(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "in"    # Landroid/os/Bundle;

    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "bundle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "obj"

    packed-switch v0, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 454
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 452
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 448
    :pswitch_3
    new-instance v0, Landroidx/core/util/Pair;

    .line 449
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    new-instance v2, Landroidx/slice/Slice;

    .line 450
    const-string v3, "obj_2"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    return-object v0

    .line 446
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 444
    :pswitch_5
    new-instance v0, Landroidx/slice/Slice;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 442
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 440
    :pswitch_7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static redactSensitiveText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 609
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 610
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroidx/slice/SliceItem;->redactSpannableText(Landroid/text/Spannable;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 611
    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 612
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroidx/slice/SliceItem;->isRedactionNeeded(Landroid/text/Spanned;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 613
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 614
    .local v0, "fixedText":Landroid/text/Spannable;
    invoke-static {v0}, Landroidx/slice/SliceItem;->redactSpannableText(Landroid/text/Spannable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 616
    .end local v0    # "fixedText":Landroid/text/Spannable;
    :cond_2
    return-object p0
.end method

.method private static redactSpannableText(Landroid/text/Spannable;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "text"    # Landroid/text/Spannable;

    .line 631
    move-object v0, p0

    .line 632
    .local v0, "out":Landroid/text/Spanned;
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 633
    .local v5, "span":Landroid/text/Annotation;
    invoke-virtual {v5}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "androidx.slice.content"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 634
    invoke-virtual {v5}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sensitive"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 635
    goto :goto_1

    .line 637
    :cond_0
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 638
    .local v6, "spanStart":I
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 639
    .local v7, "spanEnd":I
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 640
    invoke-interface {v0, v3, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    sub-int v9, v7, v6

    .line 641
    invoke-static {v9}, Landroidx/slice/SliceItem;->createRedacted(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 642
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    invoke-interface {v0, v7, v9}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 632
    .end local v5    # "span":Landroid/text/Annotation;
    .end local v6    # "spanStart":I
    .end local v7    # "spanEnd":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 644
    :cond_2
    return-object v0
.end method

.method private static sanitizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 656
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 657
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroidx/slice/SliceItem;->fixSpannableText(Landroid/text/Spannable;)V

    .line 658
    return-object p0

    .line 659
    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 660
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroidx/slice/SliceItem;->checkSpannedText(Landroid/text/Spanned;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 661
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 662
    .local v0, "fixedText":Landroid/text/Spannable;
    invoke-static {v0}, Landroidx/slice/SliceItem;->fixSpannableText(Landroid/text/Spannable;)V

    .line 663
    return-object v0

    .line 665
    .end local v0    # "fixedText":Landroid/text/Spannable;
    :cond_2
    return-object p0
.end method

.method public static typeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;

    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 480
    :pswitch_0
    const-string v0, "RemoteInput"

    return-object v0

    .line 478
    :pswitch_1
    const-string v0, "Long"

    return-object v0

    .line 476
    :pswitch_2
    const-string v0, "Int"

    return-object v0

    .line 474
    :pswitch_3
    const-string v0, "Action"

    return-object v0

    .line 472
    :pswitch_4
    const-string v0, "Image"

    return-object v0

    .line 470
    :pswitch_5
    const-string v0, "Text"

    return-object v0

    .line 468
    :pswitch_6
    const-string v0, "Slice"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeObj(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Bundle;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/String;

    .line 409
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "bundle"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "action"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "obj"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 433
    :pswitch_0
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 430
    :pswitch_1
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 431
    goto :goto_2

    .line 427
    :pswitch_2
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    goto :goto_2

    .line 424
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 425
    goto :goto_2

    .line 420
    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    move-object v0, p2

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/slice/Slice;

    invoke-virtual {v0}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "obj_2"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 422
    goto :goto_2

    .line 417
    :pswitch_5
    move-object v0, p2

    check-cast v0, Landroidx/slice/Slice;

    invoke-virtual {v0}, Landroidx/slice/Slice;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 418
    goto :goto_2

    .line 414
    :pswitch_6
    move-object v0, p2

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 415
    goto :goto_2

    .line 411
    :pswitch_7
    move-object v0, p2

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    nop

    .line 435
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;

    .line 197
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/slice/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 198
    return-void
.end method

.method public fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1, p2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 289
    return-void
.end method

.method public fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 299
    .local v0, "action":Ljava/lang/Object;
    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 300
    move-object v2, v0

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 301
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/slice/SliceItem$ActionHandler;

    invoke-interface {v1, p0, p1, p2}, Landroidx/slice/SliceItem$ActionHandler;->onAction(Landroidx/slice/SliceItem;Landroid/content/Context;Landroid/content/Intent;)V

    .line 304
    const/4 v1, 0x1

    return v1
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 2

    .line 274
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 275
    .local v0, "action":Ljava/lang/Object;
    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 276
    move-object v1, v0

    check-cast v1, Landroid/app/PendingIntent;

    return-object v1

    .line 278
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getHintArray()[Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 265
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getInt()I
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .line 343
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRedactedText()Ljava/lang/CharSequence;
    .locals 1

    .line 258
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceItem;->redactSensitiveText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/app/RemoteInput;

    return-object v0
.end method

.method public getSanitizedText()Ljava/lang/CharSequence;
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceItem;->sanitizeText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    .line 247
    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSanitizedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 2

    .line 332
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/slice/Slice;

    return-object v0

    .line 335
    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Landroidx/slice/Slice;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public varargs hasAnyHints([Ljava/lang/String;)Z
    .locals 5
    .param p1, "hints"    # [Ljava/lang/String;

    .line 398
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 399
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 400
    .local v3, "hint":Ljava/lang/String;
    iget-object v4, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v4, v3}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    const/4 v0, 0x1

    return v0

    .line 399
    .end local v3    # "hint":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_2
    return v0
.end method

.method public hasHint(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHints([Ljava/lang/String;)Z
    .locals 6
    .param p1, "hints"    # [Ljava/lang/String;

    .line 384
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 385
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 386
    .local v4, "hint":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 387
    return v2

    .line 385
    .end local v4    # "hint":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    :cond_2
    return v0
.end method

.method public onPostParceling()V
    .locals 3

    .line 575
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 576
    iget-object v2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/slice/SliceItemHolder;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    invoke-virtual {v0}, Landroidx/slice/SliceItemHolder;->release()V

    goto :goto_0

    .line 579
    :cond_0
    iput-object v1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 581
    :goto_0
    iput-object v1, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 582
    return-void
.end method

.method public onPreParceling(Z)V
    .locals 3
    .param p1, "isStream"    # Z

    .line 570
    new-instance v0, Landroidx/slice/SliceItemHolder;

    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Landroidx/slice/SliceItemHolder;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 571
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const-string v2, "hints"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const-string v2, "subtype"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroidx/slice/SliceItem;->writeObj(Landroid/os/Bundle;Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 490
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "indent"    # Ljava/lang/String;

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    iget-object v2, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    array-length v3, v2

    if-lez v3, :cond_1

    .line 510
    invoke-static {v0, v2}, Landroidx/slice/Slice;->appendHints(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "nextIndent":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v4, "slice"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v5

    goto :goto_0

    :sswitch_1
    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v7

    goto :goto_0

    :sswitch_3
    const-string v4, "long"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v8

    goto :goto_0

    :sswitch_5
    const-string v4, "action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v9

    :goto_0
    const/16 v2, 0x7d

    const/16 v4, 0xa

    const-string v10, "{\n"

    packed-switch v3, :pswitch_data_0

    .line 561
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/SliceItem;->typeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 547
    :pswitch_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "millis"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 548
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 549
    const-string v2, "INFINITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 551
    :cond_3
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v3

    .line 552
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    const/high16 v9, 0x40000

    .line 551
    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 557
    :cond_4
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    goto/16 :goto_1

    .line 535
    :pswitch_1
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 536
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    .line 537
    .local v2, "color":I
    new-array v3, v8, [Ljava/lang/Object;

    .line 538
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 539
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 537
    const-string v4, "a=0x%02x r=0x%02x g=0x%02x b=0x%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .end local v2    # "color":I
    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout_direction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 541
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    invoke-static {v2}, Landroidx/slice/SliceItem;->layoutDirectionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 543
    :cond_6
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    goto :goto_1

    .line 532
    :pswitch_2
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    goto :goto_1

    .line 529
    :pswitch_3
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    goto :goto_1

    .line 522
    :pswitch_4
    iget-object v3, p0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Landroidx/core/util/Pair;

    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 523
    .local v3, "action":Ljava/lang/Object;
    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    goto :goto_1

    .line 516
    .end local v3    # "action":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    nop

    .line 564
    :goto_1
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_5
        0x197ef -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x36452d -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
