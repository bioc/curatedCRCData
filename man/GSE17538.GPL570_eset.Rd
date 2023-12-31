\name{ GSE17538.GPL570_eset }
\alias{ GSE17538.GPL570_eset }
\docType{data}
\title{ Experimentally derived metastasis gene expression profile predicts recurrence and death in patients with colon cancer. }
\description{ Staging inadequately predicts metastatic risk in patients with colon cancer. We used a gene expression profile derived from invasive, murine colon cancer cells that were highly metastatic in an immunocompetent mouse model to identify patients with colon cancer at risk of recurrence.This phase 1, exploratory biomarker study used 55 patients with colorectal cancer from Vanderbilt Medical Center (VMC) as the training dataset and 177 patients from the Moffitt Cancer Center as the independent dataset. The metastasis-associated gene expression profile developed from the mouse model was refined with comparative functional genomics in the VMC gene expression profiles to identify a 34-gene classifier associated with high risk of metastasis and death from colon cancer. A metastasis score derived from the biologically based classifier was tested in the Moffitt dataset.A high score was significantly associated with increased risk of metastasis and death from colon cancer across all pathologic stages and specifically in stage II and stage III patients. The metastasis score was shown to independently predict risk of cancer recurrence and death in univariate and multivariate models. For example, among stage III patients, a high score translated to increased relative risk of cancer recurrence (hazard ratio, 4.7; 95\% confidence interval, 1.566-14.05). Furthermore, the metastasis score identified patients with stage III disease whose 5-year recurrence-free survival was >88\% and for whom adjuvant chemotherapy did not increase survival time.A gene expression profile identified from an experimental model of colon cancer metastasis predicted cancer recurrence and death, independently of conventional measures, in patients with colon cancer.Copyright 2010 AGA Institute. Published by Elsevier Inc. All rights reserved. }
\usage{data( GSE17538.GPL570_eset )}
\format{
\preformatted{
experimentData(eset):
Experiment data
  Experimenter name: Smith JJ, Deane NG, Wu F, Merchant NB et al.??Experimentally derived metastasis gene expression profile predicts recurrence and death in patients with colon cancer.??Gastroenterology??2010 Mar 
  Laboratory: Smith JJ,??Beauchamp RD 2009 
  Contact information:  
  Title: Experimentally derived metastasis gene expression profile predicts recurrence and death in patients with colon cancer. 
  URL:  
  PMIDs: 19914252 

  Abstract: A 260 word abstract is available. Use 'abstract' method.
  Information is available on: preprocessing 
  notes:
   platform_title:     
      [HG-U133_Plus_2] Affymetrix Human Genome U133 Plus 2.0 Array
   platform_shorttitle:     
      Affymetrix HG-U133Plus2
   platform_summary:     
      hgu133plus2
   platform_manufacturer:     
      Affymetrix
   platform_distribution:     
      commercial
   platform_accession:     
      GPL570
   platform_technology:     
      in situ oligonucleotide
   warnings:     
      No warnings yet

Preprocessing: frma
featureData(eset):
An object of class 'AnnotatedDataFrame'
  featureNames: A1BG A1BG-AS1 ... ZZZ3 (19320 total)
  varLabels: probeset gene
  varMetadata: labelDescription

}}
\details{
\preformatted{
assayData: 19320 features, 232 samples
Platform type: hgu133plus2
Overall survival time-to-event summary (in years):
Call: survfit(formula = Surv(time, cens) ~ -1)

records   n.max n.start  events  median 0.95LCL 0.95UCL 
 232.00  232.00  232.00   93.00   11.08    5.57      NA 

--------------------------- 
Available sample meta-data: 
--------------------------- 

alt_sample_name: 
   Length     Class      Mode 
      232 character character 

sample_type: 
tumor 
  232 

summarygrade: 
high  low NA's 
  30  183   19 

G: 
   1    2    3 NA's 
  17  166   30   19 

summarystage: 
early  late  NA's 
   28   132    72 

N: 
   0 NA's 
 100  132 

M: 
  0   1 
176  56 

Dstage: 
   B    C    D NA's 
  72   76   56   28 

age_at_initial_pathologic_diagnosis: 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  23.00   56.00   65.50   64.73   74.00   94.00 

days_to_tumor_recurrence: 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    0.0   216.2   906.8  1093.0  1713.0  4276.0 

recurrence_status: 
norecurrence   recurrence         NA's 
         145           55           32 

days_to_death: 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  12.82  699.70 1402.00 1423.00 1919.00 4276.00 

vital_status: 
deceased   living 
      93      139 

gender: 
  f   m 
110 122 

stageall: 
 1  2  3  4 
28 72 76 56 

ethnicity: 
    black caucasian  hispanic     other 
       13       201         2        16 

dfs_status: 
deceased_or_recurrence    living_norecurrence                   NA's 
                    55                    122                     55 

days_to_recurrence_or_death: 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    0.0   738.6  1473.0  1428.0  1917.0  4276.0      55 

disease_specific_mortality: 
  n   y 
162  70 

batch: 
   Length     Class      Mode 
      232 character character 

uncurated_author_metadata: 
   Length     Class      Mode 
      232 character character 

}}
\keyword{datasets}
