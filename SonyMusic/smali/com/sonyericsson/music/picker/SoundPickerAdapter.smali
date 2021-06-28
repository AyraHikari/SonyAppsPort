.class public final Lcom/sonyericsson/music/picker/SoundPickerAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SoundPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x2

    .line 30
    new-array v5, v0, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const-string v1, "artist"

    const/4 v2, 0x1

    aput-object v1, v5, v2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const v3, 0x7f0c0068

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0901fb
        0x7f0901fc
    .end array-data
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;

    iget-object p2, p2, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const-string v0, "title"

    .line 40
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const-string p2, "artist"

    .line 43
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 42
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0c0068

    const/4 p3, 0x0

    .line 49
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;-><init>()V

    const p3, 0x7f0901fb

    .line 51
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    const p3, 0x7f0901fc

    .line 52
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/sonyericsson/music/picker/SoundPickerAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method
