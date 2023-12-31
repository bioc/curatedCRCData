\name{ GSE24550.GPL5175_eset }
\alias{ GSE24550.GPL5175_eset }
\docType{data}
\title{ Transcriptome instability in colorectal cancer identified by exon microarray analyses: Associations with splicing factor expression levels and patient survival. }
\description{ Colorectal cancer (CRC) is a heterogeneous disease that, on the molecular level, can be characterized by inherent genomic instabilities; chromosome instability and microsatellite instability. In the present study we analyze genome-wide disruption of pre-mRNA splicing, and propose transcriptome instability as a characteristic that is analogous to genomic instability on the transcriptome level.Exon microarray profiles from two independent series including a total of 160 CRCs were investigated for their relative amounts of exon usage differences. Each exon in each sample was assigned an alternative splicing score calculated by the FIRMA algorithm. Amounts of deviating exon usage per sample were derived from exons with extreme splicing scores.There was great heterogeneity within both series in terms of sample-wise amounts of deviating exon usage. This was strongly associated with the expression levels of approximately half of 280 splicing factors (54\% and 48\% of splicing factors were significantly correlated to deviating exon usage amounts in the two series). Samples with high or low amounts of deviating exon usage, associated with overall transcriptome instability, were almost completely separated into their respective groups by hierarchical clustering analysis of splicing factor expression levels in both sample series. Samples showing a preferential tendency towards deviating exon skipping or inclusion were associated with skewed transcriptome instability. There were significant associations between transcriptome instability and reduced patient survival in both sample series. In the test series, patients with skewed transcriptome instability showed the strongest prognostic association (P = 0.001), while a combination of the two characteristics showed the strongest association with poor survival in the validation series (P = 0.03).We have described transcriptome instability as a characteristic of CRC. This transcriptome instability has associations with splicing factor expression levels and poor patient survival. }
\usage{data( GSE24550.GPL5175_eset )}
\format{
\preformatted{
experimentData(eset):
Experiment data
  Experimenter name: Sveen A, Agesen TH, Nesbakken A, Rognum TO et al.??Transcriptome instability in colorectal cancer identified by exon microarray analyses: Associations with splicing factor expression levels and patient survival.Genome Med??2011 May 27 
  Laboratory: Sveen A,????esen TH,??Rognum TO,??Lothe RA,??Skotheim RI 2011 
  Contact information:  
  Title: Transcriptome instability in colorectal cancer identified by exon microarray analyses: Associations with splicing factor expression levels and patient survival. 
  URL:  
  PMIDs: 21619627 

  Abstract: A 282 word abstract is available. Use 'abstract' method.
  Information is available on: preprocessing 
  notes:
   platform_title:     
      [HuEx-1_0-st] Affymetrix Human Exon 1.0 ST Array [transcript (gene) versio
n]
   platform_shorttitle:     
      Affymetrix HuEx-1_0-st
   platform_summary:     
      huex.1.0.st.v2
   platform_manufacturer:     
      Affymetrix
   platform_distribution:     
      commercial
   platform_accession:     
      GPL5175
   platform_technology:     
      in situ oligonucleotide
   warnings:     
      No warnings yet

Preprocessing: default
featureData(eset):
An object of class 'AnnotatedDataFrame'
  featureNames: A1CF A2ML1 ... ZYX (10015 total)
  varLabels: probeset gene
  varMetadata: labelDescription

}}
\details{
\preformatted{
assayData: 10015 features, 90 samples
Platform type: huex.1.0.st.v2
--------------------------- 
Available sample meta-data: 
--------------------------- 

alt_sample_name: 
   Length     Class      Mode 
       90 character character 

sample_type: 
adjacentnormal          tumor 
            13             77 

summarystage: 
late NA's 
  33   57 

M: 
   0 NA's 
  77   13 

Dstage: 
   B    C NA's 
  44   33   13 

msi: 
 MSI  MSS NA's 
  14   51   25 

stageall: 
   2    3 NA's 
  44   33   13 

dfs_status: 
deceased_or_recurrence    living_norecurrence                   NA's 
                    19                     58                     13 

days_to_recurrence_or_death: 
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  62.05 1007.00 1219.00 1193.00 1449.00 1814.00      13 

batch: 
   Length     Class      Mode 
       90 character character 

drug_treatment: 
   n    y NA's 
  44   33   13 

preop_drug_treatment: 
 n 
90 

chemotherapy: 
   n    y NA's 
  44   33   13 

uncurated_author_metadata: 
   Length     Class      Mode 
       90 character character 

}}
\keyword{datasets}
