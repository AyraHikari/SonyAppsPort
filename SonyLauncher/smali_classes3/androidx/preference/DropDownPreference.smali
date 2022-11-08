.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "DropDownPreference.java"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    sget v0, Landroidx/preference/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance v0, Landroidx/preference/DropDownPreference$1;

    invoke-direct {v0, p0}, Landroidx/preference/DropDownPreference$1;-><init>(Landroidx/preference/DropDownPreference;)V

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 72
    iput-object p1, p0, Landroidx/preference/DropDownPreference;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 75
    invoke-direct {p0}, Landroidx/preference/DropDownPreference;->updateEntries()V

    .line 76
    return-void
.end method

.method private findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 139
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 140
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    return v1

    .line 139
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private updateEntries()V
    .locals 6

    .line 104
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 105
    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 107
    .local v3, "c":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 106
    .end local v3    # "c":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    .line 99
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroidx/preference/ListPreference;->notifyChanged()V

    .line 122
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 125
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 129
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Landroidx/preference/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 130
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 133
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 134
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 81
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .line 85
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0}, Landroidx/preference/DropDownPreference;->updateEntries()V

    .line 87
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 114
    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 115
    return-void
.end method
